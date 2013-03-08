(add-hook 'yatex-mode-hook'(lambda ()(setq auto-fill-function nil)))
(setq YaTeX-use-hilit19 nil
        YaTeX-use-font-lock t)
(setq YaTeX-kanji-code 4)
(setq auto-mode-alist
      (append '(("\\.tex$" . yatex-mode) ("\\.sty$" . yatex-mode)) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(setq YaTeX-use-AMS-LaTeX t)

(setq YaTeX-template-file "~/.emacs.d/share/yatextemplate.tex")
(setq tex-command "~/usr/bin/platex2pdf"
     dvi2-command "open -a Skim"
     makeindex-command "mendex -U")

(setq
 YaTeX-math-sign-alist-private
 '(("Q" "mathbb{Q}" "(Q)")
   ("Z" "mathbb{Z}" "ZZ")
   ("R" "mathbb{R}" "R")
   ("C" "mathbb{C}" "R")
   ("Z" "mathbb{N}" "N")
   ("st" "text{s.t.}" "s.t.")
   ("op" "^{\\text{op}}" "op")
   ("{/" "notin" "∉")
   ("..." "dots" "...")
   )
 )

(provide 'init_yatex)
