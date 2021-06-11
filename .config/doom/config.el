(setq user-full-name "insertdead"
      user-mail-address "mdsc@disroot.org")

(setq doom-font (font-spec :family "Iosevka Nerd Font" :size 13) ; :weight 'semi-light
      doom-variable-pitch-font (font-spec :family "Noto Sans Nerd Font" :size 15))

(setq doom-theme 'doom-nord)

(setq org-directory "~/org/")
(setq org-noter-notes-search-path '("~/Documents/notes"))
(setq org-default-notes-file "~/org/tasks.org")

(setq org-latex-pdf-process (list "latexmk -shell-escape -%latex -bibtex -f %f"))
(setq org-latex-bib-compiler "biber")
(setq bibtex-dialect "biblatex")

(setq org-latex-hyperref-template "\\hypersetup{\
    pdfauthor={%a},\
    pdftitle={%t},\
    pdfkeywords={%k},\
    pdfsubject={%d},\
    pdfcreator={%c},\
    pdflang={%L},\
    colorlinks,\
    linkcolor={black},\
    citecolor={blue!50!black},\
    urlcolor={blue!80!black}}\n")

(setq org-ref-completion-library 'org-ref-ivy-cite) ;; set `ivy' as the main completion library

(setq org-ref-bibliography-notes "~/Documents/Bibliography/notes.org" ;; where bib notes are
      org-ref-default-bibliography '("~/Documents/Bibliography/references.bib") ;; default bib file
      org-ref-pdf-directory "~/Documents/Bibliography/bibtex-pdfs/") ;; directory to find pdfs
;; Specify where pdfs can be found
(setq bibtex-completion-library-path '("~/Documents/Bibliography/bibtex-pdfs"))
;; Specify where the `notes.org' file/directory can be found
(setq bibtex-completion-notes-path "~/Documents/Bibliography/notes.org")
(setq bibtex-completion-pdf-open-function 'org-open-file)

(map! :leader
      :desc "Synchronize document to selected note"
      "n ." #'org-noter-sync-current-note)
(map! :leader
      :desc "Insert a new note"
      "n p" #'org-noter-insert-note)
(map! :leader
      :desc "Insert a precise note"
      "n P" #'org-noter-insert-precise-note)

(setq org-msg-convert-citation t)
(set-email-account! "disroot"
                    '((mu4e-sent-folder       . "/disroot/Sent")
                      (mu4e-drafts-folder     . "/disroot/Drafts")
                      (mu4e-trash-folder      . "/disroot/Trash")
                      (mu4e-refile-folder     . "/disroot/Archive")
                      (smtpmail-smtp-user     . "mdsc@disroot.org")
                      (mu4e-compose-signature . "---\nMadsci")))
