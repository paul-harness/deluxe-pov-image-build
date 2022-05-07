echo "URL to search:" ${PLUGIN_URL}
echo "Search Term:" ${PLUGIN_SEARCHTERM}

git clone https://github.com/paul-harness/simple-selenium-project.git
cd simple-selenium-project
python3 scraper.py > output.txt
cat output.txt
