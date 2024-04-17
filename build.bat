call tweego -l -o export/where_are_you_from.html src
python python_scripts/loading_screen_remover.py "export/where_are_you_from.html"

call tweego -l -o "C:\Users\Sarah\Documents\GitHub\theplasmak.github.io\Where_Are_You_From.html" src
python python_scripts/loading_screen_remover.py "C:\Users\Sarah\Documents\GitHub\theplasmak.github.io\Where_Are_You_From.html"

python python_scripts/twee_to_poof.py

python python_scripts/twee_to_docx.py