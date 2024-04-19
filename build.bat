call tweego -l -o export/Where_Are_You_From.html src
python python_scripts/loading_screen_remover.py "export/Where_Are_You_From.html"

call tweego -l -o "C:\Users\Sarah\Documents\GitHub\theplasmak.github.io\Where_Are_You_From.html" src
python python_scripts/loading_screen_remover.py "C:\Users\Sarah\Documents\GitHub\theplasmak.github.io\Where_Are_You_From.html"

python python_scripts/twee_to_poof.py

python python_scripts/twee_to_docx.py