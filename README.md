# pleasant.vim
A Pleasant colorscheme for our beloved Vim / NeoVim.

![Golang code in Pleasant](https://user-images.githubusercontent.com/13658649/91580998-875ccd80-e96b-11ea-9fbd-991690acf143.png)

Pleasant tries to represent the pleasant color scheme of a nightly beach. The colors have been picked from basic color theory & tweaked using [Lab](https://www.wikiwand.com/en/CIELAB_color_space) to maintain proper luminosity & color difference. May not be as meticulously tweaked as [solarized](https://github.com/altercation/vim-colors-solarized). You can refer [wiki](https://github.com/RohanPoojary/pleasant.vim/wiki) for more details on how.

This scheme is heavily inspired by my favourite [nord](https://github.com/arcticicestudio/nord-vim). Hence it has a dark nordish touch to it.
The project layout is similar to famous [dracula](https://github.com/dracula/vim).


# Installation
Install using your favourite plugin manager.

```
Plug 'RohanPoojary/pleasant.vim'
```

Then just set the colorscheme.

```vim

set termguicolors

" Uncomment to enable bold.
" let g:pleasant_bold = 1

" Uncomment to enable italic.
" let g:pleasant_italic = 1

colorscheme pleasant

```

For [airline](https://github.com/vim-airline/vim-airline)

```vim

let g:airline_theme = 'pleasant'

```
![Airline in Pleasant](https://user-images.githubusercontent.com/13658649/91853917-8932d380-ec80-11ea-9d72-d5b435a2e4e2.jpg)

For [lightline](https://github.com/itchyny/lightline.vim)

```vim

let g:lightline = {
      \ 'colorscheme': 'pleasant',
      \ }

```

![Lightline in Pleasant](https://user-images.githubusercontent.com/13658649/91853778-52f55400-ec80-11ea-91e2-2154b5698c6a.jpg)

# Palette
![Pleasant Palette](https://user-images.githubusercontent.com/13658649/91580296-80818b00-e96a-11ea-8975-838a2aca3114.jpg)

# Contribution
Color schemes for whole ton of Languages and Plugins has to be added.
Also I mainly work on Golang, Python & Rust. So, have tweaked the scheme mainly for them. A lot of work has to be done & any PR is accepted.

# Screenshots
The font used is ever awesome [Fira Code](https://github.com/tonsky/FiraCode).


### Golang
![Golang code in Pleasant](https://user-images.githubusercontent.com/13658649/91580998-875ccd80-e96b-11ea-9fbd-991690acf143.png)

### Rust
![Rust code in Pleasant](https://user-images.githubusercontent.com/13658649/91581349-f6d2bd00-e96b-11ea-887b-846c91837465.png)

### Python
To be added

### Javascript
![Javascript code in Pleasant](https://user-images.githubusercontent.com/13658649/91582253-2a621700-e96d-11ea-9ff5-40714bd430b3.png)

### HTML
![HTML code in Pleasant](https://user-images.githubusercontent.com/13658649/91584806-cfcaba00-e970-11ea-9eec-3329da1a26be.png)

### CSS
![CSS code in Pleasant](https://user-images.githubusercontent.com/13658649/91582389-609f9680-e96d-11ea-8b25-366ef0aab4d0.png)

### Diff
To be added
