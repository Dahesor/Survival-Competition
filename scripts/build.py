from recipe import main
from registry.read_files import main as read_files_main
from registry.update_tag import main as update_tag_main

if __name__ == "__main__":
    read_files_main()
    main()
    update_tag_main()