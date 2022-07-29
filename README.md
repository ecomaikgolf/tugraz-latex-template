# TUGraz Personal LaTeX Template

## Dependencies
- LaTeX compiler: `pdflatex` or `lualatex` or `xelatex`... (Recommended `lualatex`)
- Needed LaTeX packages, see `config/tugraz-style.sty`. (Recommended `texlive-full`)
- `texlogfilter`, or remove `| texlogfilter $(SUP)` from `makefile`

## How to use

1. Download template repository
```
git clone https://github.com/ecomaikgolf/tugraz-latex-template.git
cd tugraz-latex-template
```
2. Edit `document.tex`, change 'CHANGEME' values & write desired text after `\begin{document}`
3. Compile document
```
make
```
4. Open `document.pdf`

### Advanced usage

- Add new packages in 'User Packages' (`document.tex`)
- Fill the bibliography at 'Bibliography' (`document.tex`)
```tex
\AtEndDocument{
\if\docbibliography1
  \begin{thebibliography}{9}
    % \bibitem{key}
    % Text
    
    \bibitem{texbook}
    Donald E. Knuth (1986) \emph{The \TeX{} Book}, Addison-Wesley Professional.

    \bibitem{lamport94}
    Leslie Lamport (1994) \emph{\LaTeX: a document preparation system}, Addison Wesley, Massachusetts, 2nd ed.

  \end{thebibliography}
\fi
}

```

- Insert a figure with `\fig`

```tex
\fig{example-figure}{30m}{The Figure Caption}{figurelabel}
```

- Insert two figure with `\figtwo`

```tex
\figtwo{example-figure}{30m}{The Figure Caption 1}{figurelabel1}{example-figure}{30m}{The Figure Caption 2}{figurelabel2}{The General Caption}
```

- Insert code listing

```tex
{
  \begin{code}[main.cpp]
int 
main() {
  return 0;
}
  \end{code}
  \captionof{lstlisting}{Main Example}
}
```

- Insert terminal output listing

```tex
{
  \begin{terminal}[uptime]
18:00:21 up 45 min,  1 user,  load average: 0,29, 0,26, 0,27
  \end{terminal}
  \captionof{term}{Command Example}
}
```

- Insert command

```tex
\begin{command}
yay -S texlive-full
\end{command}
```

- Open two/three/four/ncols enviroment

```tex
\begin{twocols}
\end{twocols}
\begin{threecols}
\end{threecols}
\begin{fourcols}
\end{fourcols}
\begin{ncols}{5}
\end{ncols}
```

- Reference labels

```tex
As seen in \autoref{label}
```

- Insert code/text "number balls" (like No Starch Press)

```tex
begin{code}[title]
int a; ¡\cb{1}¡
\end{code}
In \tb{1} we create an int
```

## Configure template

The template supports some 'tuning' parameters, such as accent/secondary colors, logo, font, twocols/onecol, twocols balancing, etc.

To change these options, go to 'Options' in `document.tex` and modify the default values.

### Further configuration

Manually `config/tugraz-style.sty`

## Comments

I am not a LaTeX expert, this template is intended for my personal use.

Borders have to be that thick to not cause line glitching problems in some renderers (chrome, firefox...), zathura handles them well but I have to support chrome due to it's popularity
