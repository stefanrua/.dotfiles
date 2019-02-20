(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3c3836" "#fb4934" "#b8bb26" "#fabd2f" "#83a598" "#d3869b" "#8ec07c" "#ebdbb2"])
 '(custom-enabled-themes (quote (nofrils-acme)))
 '(custom-safe-themes
   (quote
    ("fd3c7bd752f48dcb7efa5f852ef858c425b1c397b73851ff8816c0580eab92f1" "bdb4509c123230a059d89fc837c40defdecee8279c741b7f060196b343b2d18d" "2a9039b093df61e4517302f40ebaf2d3e95215cb2f9684c8c1a446659ee226b9" "3da031b25828b115c6b50bb92a117f5c0bbd3d9d0e9ba5af3cd2cb9db80db1c2" "595617a3c537447aa7e76ce05c8d43146a995296ea083211225e7efc069c598f" "ed17fef69db375ae1ced71fdc12e543448827aac5eb7166d2fd05f4c95a7be71" "6515fcc302292f29a94f6ac0c5795c57a396127d5ea31f37fc5f9f0308bbe19f" "5a45c8bf60607dfa077b3e23edfb8df0f37c4759356682adf7ab762ba6b10600" "e2fd81495089dc09d14a88f29dfdff7645f213e2c03650ac2dd275de52a513de" "a622aaf6377fe1cd14e4298497b7b2cae2efc9e0ce362dade3a58c16c89e089c" "bf5bdab33a008333648512df0d2b9d9710bdfba12f6a768c7d2c438e1092b633" "2642a1b7f53b9bb34c7f1e032d2098c852811ec2881eec2dc8cc07be004e45a0" "bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "7f89ec3c988c398b88f7304a75ed225eaac64efa8df3638c815acc563dfd3b55" default)))
 '(fci-rule-color "#3E4451")
 '(nav-width 35)
 '(package-selected-packages
   (quote
    (diff-hl nofrils-acme-theme undo-tree nav gruvbox-theme)))
 '(pdf-view-midnight-colors (quote ("#fdf4c1" . "#32302f")))
 '(show-paren-mode t)
 '(tetris-x-colors
   [[229 192 123]
    [97 175 239]
    [209 154 102]
    [224 108 117]
    [152 195 121]
    [198 120 221]
    [86 182 194]])
 '(tool-bar-mode nil))


;;
;; THE ACTUALLY INTERESTING PART
;;

;; Remove menu, tool, and scroll bars
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; (global-hl-line-mode 1) ;; Highlight current line
;; (global-diff-hl-mode 1) ;; Highlight diffs

(set-default-font "Inconsolata 14")
(global-linum-mode 1) ;; Add line numbers
(setq vc-follow-symlinks t) ;; Follow symlink automatically
(setq show-paren-delay 0) ;; Remove delay from showing parens / KEEP THIS BEFORE show-paren-mode
(show-paren-mode 1) ;; Show matching parens
(set-default 'truncate-lines t) ;; Remove line wrap
(setq backup-directory-alist '(("." . "~/.emacs.d/backup")) ;; use this directory for backups
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
;  kept-new-versions 20   ; how many of the newest versions to keep
;  kept-old-versions 5    ; and how many of the old
  )

;; Keybinds
(global-unset-key (kbd "C-z")) ;; Remove freezing bind

;; Tab width
; (setq-default tab-width 4)
(setq c-default-style "linux"
      c-basic-offset 4)
(setq js-indent-level 2)

;; Go directly to scratchpad
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)
(setq initial-scratch-message "
 ;;      ___           ___           ___           ___           ___     
 ;;     /\\  \\         /\\__\\         /\\  \\         /\\  \\         /\\  \\    
 ;;    /::\\  \\       /::|  |       /::\\  \\       /::\\  \\       /::\\  \\   
 ;;   /:/\\:\\  \\     /:|:|  |      /:/\\:\\  \\     /:/\\:\\  \\     /:/\\ \\  \\  
 ;;  /::\\~\\:\\  \\   /:/|:|__|__   /::\\~\\:\\  \\   /:/  \\:\\  \\   _\\:\\~\\ \\  \\ 
 ;; /:/\\:\\ \\:\\__\\ /:/ |::::\\__\\ /:/\\:\\ \\:\\__\\ /:/__/ \\:\\__\\ /\\ \\:\\ \\ \\__\\
 ;; \\:\\~\\:\\ \\/__/ \\/__/~~/:/  / \\/__\\:\\/:/  / \\:\\  \\  \\/__/ \\:\\ \\:\\ \\/__/
 ;;  \\:\\ \\:\\__\\         /:/  /       \\::/  /   \\:\\  \\        \\:\\ \\:\\__\\  
 ;;   \\:\\ \\/__/        /:/  /        /:/  /     \\:\\  \\        \\:\\/:/  /  
 ;;    \\:\\__\\         /:/  /        /:/  /       \\:\\__\\        \\::/  /   
 ;;     \\/__/         \\/__/         \\/__/         \\/__/         \\/__/    

")
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
