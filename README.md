# Ubuntu Keyboard

This is a QML and C++ based Keyboard Plugin for Maliit, based on the Maliit Reference plugin, taking into account the special UI/UX requests of Ubuntu Phone.

## Updating presage language models

If the source material used for presage's prediction models is update the databases can be regenerated by running "make lang_db_$lc" within the plugin's "src" directory (where $lc is the language code for the updated language, e.g. "make lang_db_en" for English)

## Updating translations

After building the keyboard (such as with `dpkg-buildpackage -us -uc`), run `make pot` from the `po` directory to rebuild the translation source file.

## On-device testing

To test a pull request on your device, type

    sudo ubports-qa install keyboard-component X

where `X` is the code of a merge request to this repository.

Logs are saved in `~/.cache/upstart/maalit-server.log`. They can be viewed directly on-device with a [log viewer](https://open-store.io/app/logviewer.neothethird).

## Options

To list available options (in UBports), type

    gsettings list-recursively com.lomiri.keyboard.maliit

and to set them

    gsettings set com.lomiri.keyboard.maliit option value 
