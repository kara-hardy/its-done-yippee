# its-done-yippee

Two tiny MATLAB functions that play an audio cue: `errorohno` for failures, `doneyippee` for successes.

## What's in this repo

- `errorohno.m` – plays `ohno.mp3`
- `doneyippee.m` – plays `yippee.mp3`
- `ohno.mp3`, `yippee.mp3` – audio clips used by the functions above

## Install

### Option A: Clone and add to path

```bash
gitclone https://github.com/kara-hardy/its-done-yippee.git
```

Then in MATLAB:

```matlab
addpath('/path/to/sound-alerts')
savepath   % optional, makes it permanent
```

### Option B: Toolbox install (one click, via Add-On)

If you package this repo as a `.mltbx` toolbox (see below), anyone can install it by double-clicking the file in MATLAB, and it shows up under **Home > Add-Ons > Manage Add-Ons**.

To build the `.mltbx`:

1. Open MATLAB in this folder.
2. Go to the **Apps** tab and open **Package Toolbox** (or `matlab.addons.toolbox.packageToolbox` from the command line).
3. Add `errorohno.m`, `doneyippee.m`, `ohno.mp3`, and `yippee.mp3` as included files.
4. Set a toolbox name, version, and author, then package it.
5. Attach the resulting `.mltbx` to a GitHub Release so people can download and double-click to install.

## Usage

```matlab
try
    risky_operation()
catch
    errorohno
end

long_running_task()
doneyippee
```

## Notes

Both functions locate their `.mp3` file relative to the function's own location (`mfilename('fullpath')`), so they work regardless of your current working folder — as long as the two files stay in the same directory as their matching script.
