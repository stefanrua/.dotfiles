
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
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (kaolin-galaxy)))
 '(custom-safe-themes
   (quote
    ("3018b767e4d5b0ddf37c909b2ea2a29c249d5a88645b4243d5b97fe2d67c71ab" "5c85b6f7f76fe0e0979da4c650dee525ae5185b134cb0fdfb12eeb580ea4dafb" "5cdc1832748ae451c19a1546a4bc200750557a924f6124428272f114b6d28ac1" "6f01d5233bf31b3606972faca955b943eb934c896b9a205cdbf7105b917ce290" "36c2b7efdc064944eb067e56c7ec65808a6cee0f63ce068b693fb30b110e57e5" "3dd98b7c43041526b35a4466c165d55400207ea9a82fd765c5c4bffffe1a7bd9" "8ba0a9fc75f2e3b4c254183e814b8b7b8bcb1ad6ca049fde50e338e1c61a12a0" "a12ec87ff9e72a9561314c7ae2c82a373e1b7c80d0fe15579e282080c8d5aef2" "9f08dacc5b23d5eaec9cccb6b3d342bd4fdb05faf144bdcd9c4b5859ac173538" "26d613485834c8498d96a664d970e19b7d5286c39a78452f492ae5572cf1bd21" "62a1ee2f74cc331e7a09c62c0839cb1b8a39ac25dcd99ddeec2ea42f502bbf83" "2f524d307a2df470825718e27b8e3b81c0112dad112ad126805c043d7c1305c6" "77bd459212c0176bdf63c1904c4ba20fce015f730f0343776a1a14432de80990" "7feeed063855b06836e0262f77f5c6d3f415159a98a9676d549bfeb6c49637c4" "c1fb68aa00235766461c7e31ecfc759aa2dd905899ae6d95097061faeb72f9ee" "392395ee6e6844aec5a76ca4f5c820b97119ddc5290f4e0f58b38c9748181e8d" "8b4d8679804cdca97f35d1b6ba48627e4d733531c64f7324f764036071af6534" "04589c18c2087cd6f12c01807eed0bdaa63983787025c209b89c779c61c3a4c4" default)))
 '(fci-rule-color "#BBBBBB")
 '(hl-paren-background-colors (quote ("#2492db" "#95a5a6" nil)))
 '(hl-paren-colors (quote ("#ecf0f1" "#ecf0f1" "#c0392b")))
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (autotetris-mode markdown-mode kaolin-themes cherry-blossom-theme)))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(sml/active-background-color "#34495e")
 '(sml/active-foreground-color "#ecf0f1")
 '(sml/inactive-background-color "#dfe4ea")
 '(sml/inactive-foreground-color "#34495e")
 '(tool-bar-mode nil)
 '(vc-annotate-background "#ecf0f1")
 '(vc-annotate-color-map
   (quote
    ((30 . "#e74c3c")
     (60 . "#c0392b")
     (90 . "#e67e22")
     (120 . "#d35400")
     (150 . "#f1c40f")
     (180 . "#d98c10")
     (210 . "#2ecc71")
     (240 . "#27ae60")
     (270 . "#1abc9c")
     (300 . "#16a085")
     (330 . "#2492db")
     (360 . "#0a74b9"))))
 '(vc-annotate-very-old-color "#0a74b9"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Add MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; Indent levels for different filetypes
(setq js-indent-level 2)

;; Put all backup files in this directory
(setq backup-directory-alist `(("." . "~/.saves")))
