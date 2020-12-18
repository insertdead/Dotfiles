;;; config.el --- Config for EXWM -*- lexical-binding: t; -*-
;;
;; Author: Madsci <http://github/insertdead>
;; Maintainer: Madsci <mdsc0111@tuta.io>
;; Created: November 19, 2020
;; Modified: November 19, 2020
;; Version: 0.0.1
;; Keywords:
;; Homepage: https://github.com/madsci/config
;; Package-Requires: ((emacs 27.1) (cl-lib "0.5"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;; This is a config file I wrote for EXWM to not bloat up my Emacs config.
;; Use at your own risk, this may be a terrible idea and I should have never done this.
;; After all, I am new to elisp.
;;
;;; Code:
;;
;;;; Set Global keys
(require `exwm-config)
(exwm-enable)
(setq exwm-input-global-keys
      `(([?\s-R] . exwm-reset)
        ([?\s-!] . exwm-workspace-switch)
        ,@(mapcar (lambda (i)
                    `(,(kbd(format "s-%d" i))
                      (lambda ()
                        (interactive)
                        (exwm-workspace-switch-create ,i))))
                  (number-sequence 0 9))))
;;;; Set local keys
;;;;; Window Control keys
(define-key exwm-mode-map [?\s-f] `exwm-layout-set-fullscreen)
;;;;; Layout Control keys

(provide 'exwm-config-madsci)
;;; config.el ends here
