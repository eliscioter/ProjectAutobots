from pathlib import Path
import os
import glob
import re

# TEMPLATE_FILE_NAME = "Historical Bulk Upload Template_143_AppX"

def verify_downloaded_file(template_file_name):
    """Check downloaded bulk create filename"""
    downloads_path = str(Path.home() / "Downloads/*")
    list_of_files = glob.iglob(downloads_path)

    latest_file = max(list_of_files, key=os.path.getctime)


    basename = os.path.basename(latest_file)
    filename = os.path.splitext(basename)

    if not re.search(f"{template_file_name}", filename[0]):
        print("Error")
        return False
    return True
