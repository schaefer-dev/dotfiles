" Latex Suite settings:
augroup MyIMAPs
        au!
        au VimEnter * call IMAP('(', '(<++>)<++>', 'tex')
        au VimEnter * call IMAP('{', '{<++>}<++>', 'tex')
        au VimEnter * call IMAP('\{', '\{<++>\}<++>', 'tex')
        au VimEnter * call IMAP('[', '[<++>]<++>', 'tex')
        au VimEnter * call IMAP('$', '$<++>$<++>', 'tex')
        au VimEnter * call IMAP('\s ', '\section{<++>}<++>', 'tex')
        au VimEnter * call IMAP('\sss ', '\subsubsection{<++>}<++>', 'tex')
        au VimEnter * call IMAP('\ss ', '\subsection{<++>}<++>', 'tex')
        au VimEnter * call IMAP('\enumerate ', '\begin{enumerate}<++>', 'tex')
        au VimEnter * call IMAP ('\itemize ', '\begin{itemize}<++>','tex')
        au VimEnter * call IMAP('\bf ','\textbf{<++>}<++>','tex')
        au VimEnter * call IMAP('\un ','\underline{<++>}<++>','tex')
        au VimEnter * call IMAP('\conc ','$\rightarrow$ <++>','tex')
        au VimEnter * call IMAP('\frac{','\frac{<++>}{<++>}<++>','tex')
        au VimEnter * call IMAP('\frac ','\frac{<++>}{<++>}<++>','tex')
        au VimEnter * call IMAP('\underbrace{','\underbrace{<++>}_{<++>}<++>','tex')
        au VimEnter * call IMAP('\underbrace ','\underbrace{<++>}_{<++>}<++>','tex')
        au VimEnter * call IMAP('\Conc ','$\Rightarrow$ <++>','tex')
        au VimEnter * call IMAP("''","''<++>''<++>",'tex')
augroup END

" let g:Tex_CompileRule_pdf = 'latexmk -pdf'


