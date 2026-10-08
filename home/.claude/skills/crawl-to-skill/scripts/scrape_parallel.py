import sys
import subprocess
import concurrent.futures
from pathlib import Path


def scrape(url, out_dir):
    # URLからファイル名を生成（例: https://example.com/docs/api -> docs-api）
    name = url.split("://", 1)[-1].split("/", 1)[-1].replace("/", "-")
    if not name or name == "-":
        name = "index"

    out_file = Path(out_dir) / f"{name}.md"
    cmd = ["firecrawl", "scrape", url, "--only-main-content", "-o", str(out_file)]

    try:
        subprocess.run(
            cmd, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, check=True
        )
        print(f"✅ Scraped: {url}")
    except subprocess.CalledProcessError:
        print(f"❌ Failed: {url}")


def main():
    if len(sys.argv) < 3:
        print("Usage: python scrape_parallel.py <urls_file> <output_dir>")
        sys.exit(1)

    urls_file = Path(sys.argv[1])
    out_dir = Path(sys.argv[2])
    out_dir.mkdir(parents=True, exist_ok=True)

    with open(urls_file, "r") as f:
        urls = [line.strip() for line in f if line.strip() and line.startswith("http")]

    print(f"Starting parallel scrape for {len(urls)} URLs into '{out_dir}/'...")

    with concurrent.futures.ThreadPoolExecutor(max_workers=10) as executor:
        futures = [executor.submit(scrape, url, out_dir) for url in urls]
        concurrent.futures.wait(futures)

    print("Scraping complete.")


if __name__ == "__main__":
    main()
