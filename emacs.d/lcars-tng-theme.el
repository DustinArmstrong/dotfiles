;;; lcars-tng-theme.el --- LCARS TNG color theme
;;
;; Copyright 2015 Jonathan Chu
;;
;; Author: Jonathan Chu <me@jonathanchu.is>
;; URL: https://github.com/jonathanchu/atom-one-dark-theme
;; Version: 0.3.1
;;
;;; Commentary:
;;
;; An Emacs port of the LCARS TNG theme from Atom.io.
;;
;;; Code:

(deftheme lcars-tng
  "LCARS TNG - An Emacs port of the LCARS TNG theme from Atom.io.")

(defvar lcars-tng-colors-alist
  '(("lcars-tng-accent"   . "#9966ff") ;set
    ("lcars-tng-fg"       . "#FFCC99") ;set
    ("lcars-tng-bg"       . "#0E0E0E") ;set
    ("lcars-tng-bg-1"     . "#46698C") ;set
    ("lcars-tng-bg-hl"    . "#5986B2") ;set
    ("lcars-tng-mono-1"   . "#B8B8E5") ;set
    ("lcars-tng-mono-2"   . "#9999BF") ;set
    ("lcars-tng-mono-3"   . "#66667F") ;set
    ("lcars-tng-cyan"     . "#99CCFF") ;set
    ("lcars-tng-blue"     . "#9999FF") ;set
    ("lcars-tng-purple"   . "#CC99CC") ;set
    ("lcars-tng-green"    . "#98C379") ;set
    ("lcars-tng-red-1"    . "#CC6699") ;set
    ("lcars-tng-red-2"    . "#CC6666") ;set
    ("lcars-tng-red-3"    . "#FF3300") ;set
    ("lcars-tng-orange-1" . "#FF9900") ;set
    ("lcars-tng-orange-2" . "#FF9966") ;set
    ("lcars-tng-gray"     . "#999999") ;set
    ("lcars-tng-silver"   . "#CCCCFF") ;set
    ("lcars-tng-black"    . "#000000")) ;set
  "List of LCARS TNG colors.")

(defmacro lcars-tng-with-color-variables (&rest body)
  "Bind the colors list around BODY."
  (declare (indent 0))
  `(let ((class '((class color) (min-colors 89)))
         ,@ (mapcar (lambda (cons)
                      (list (intern (car cons)) (cdr cons)))
                    lcars-tng-colors-alist))
     ,@body))

(lcars-tng-with-color-variables
  (custom-theme-set-faces
   'lcars-tng

   `(default ((t (:foreground ,lcars-tng-fg :background ,lcars-tng-bg))))
   `(success ((t (:foreground ,lcars-tng-green))))
   `(warning ((t (:foreground ,lcars-tng-red-3))))
   `(error ((t (:foreground ,lcars-tng-red-1 :weight bold))))
   `(link ((t (:foreground ,lcars-tng-blue :underline t :weight bold))))
   `(link-visited ((t (:foreground ,lcars-tng-blue :underline t :weight normal))))
   `(cursor ((t (:background ,lcars-tng-accent))))
   `(fringe ((t (:background ,lcars-tng-bg))))
   `(region ((t (:background ,lcars-tng-gray))))
   `(highlight ((t (:background ,lcars-tng-gray))))
   `(hl-line ((t (:background ,lcars-tng-bg-hl))))
   `(vertical-border ((t (:foreground ,lcars-tng-mono-3))))
   `(secondary-selection ((t (:background ,lcars-tng-bg-1))))
   `(query-replace ((t (:inherit (isearch)))))
   `(minibuffer-prompt ((t (:foreground ,lcars-tng-silver))))

   `(font-lock-builtin-face ((t (:foreground ,lcars-tng-cyan))))
   `(font-lock-comment-face ((t (:foreground ,lcars-tng-mono-3))))
   `(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
   `(font-lock-doc-face ((t (:inherit (font-lock-string-face)))))
   `(font-lock-function-name-face ((t (:foreground ,lcars-tng-blue))))
   `(font-lock-keyword-face ((t (:foreground ,lcars-tng-purple))))
   `(font-lock-preprocessor-face ((t (:foreground ,lcars-tng-mono-2))))
   `(font-lock-string-face ((t (:foreground ,lcars-tng-blue))))
   `(font-lock-type-face ((t (:foreground ,lcars-tng-orange-1))))
   `(font-lock-constant-face ((t (:foreground ,lcars-tng-orange-1))))
   `(font-lock-variable-name-face ((t (:foreground ,lcars-tng-red-2))))
   `(font-lock-warning-face ((t (:foreground ,lcars-tng-mono-3 :bold t))))

   ;; mode-line
   `(mode-line ((t (:background ,lcars-tng-black :foreground ,lcars-tng-silver))))
   `(mode-line-buffer-id ((t (:weight bold))))
   `(mode-line-emphasis ((t (:weight bold))))
   `(mode-line-inactive ((t (:background ,lcars-tng-gray))))

   ;; ace-jump
   `(ace-jump-face-background ((t (:foreground ,lcars-tng-mono-3 :background ,lcars-tng-bg-1 :inverse-video nil))))
   `(ace-jump-face-foreground ((t (:foreground ,lcars-tng-red-1 :background ,lcars-tng-bg-1 :inverse-video nil))))

   ;; company-mode
   `(company-tooltip ((t (:foreground ,lcars-tng-fg :background ,lcars-tng-bg-1))))
   `(company-tooltip-annotation ((t (:foreground ,lcars-tng-mono-2 :background ,lcars-tng-bg-1))))
   `(company-tooltip-selection ((t (:foreground ,lcars-tng-fg :background ,lcars-tng-gray))))
   `(company-tooltip-mouse ((t (:background ,lcars-tng-gray))))
   `(company-tooltip-common ((t (:foreground ,lcars-tng-orange-2 :background ,lcars-tng-bg-1))))
   `(company-tooltip-common-selection ((t (:foreground ,lcars-tng-orange-2 :background ,lcars-tng-gray))))
   `(company-scrollbar-fg ((t (:background ,lcars-tng-mono-1))))
   `(company-scrollbar-bg ((t (:background ,lcars-tng-bg-1))))

   ;; compilation
   `(compilation-face ((t (:foreground ,lcars-tng-fg))))
   `(compilation-line-number ((t (:foreground ,lcars-tng-mono-2))))
   `(compilation-column-number ((t (:foreground ,lcars-tng-mono-2))))

   ;; isearch
   `(isearch ((t (:foreground ,lcars-tng-bg :background ,lcars-tng-purple))))
   `(isearch-fail ((t (:foreground ,lcars-tng-red-2 :background nil))))
   `(lazy-highlight ((t (:foreground ,lcars-tng-purple :background ,lcars-tng-bg-1 :underline ,lcars-tng-purple))))

   ;; diff-hl (https://github.com/dgutov/diff-hl)
   '(diff-hl-change ((t (:foreground "#E9C062" :background "#8b733a"))))
   '(diff-hl-delete ((t (:foreground "#CC6666" :background "#7a3d3d"))))
   '(diff-hl-insert ((t (:foreground "#A8FF60" :background "#547f30"))))

   ;; dired-mode
   '(dired-directory ((t (:inherit (font-lock-keyword-face)))))
   '(dired-flagged ((t (:inherit (diff-hl-delete)))))
   '(dired-symlink ((t (:foreground "#FD5FF1"))))

   ;; helm
   `(helm-header ((t (:foreground ,lcars-tng-mono-2
                      :background ,lcars-tng-bg
                      :underline nil
                      :box (:line-width 6 :color ,lcars-tng-bg)))))
   `(helm-source-header ((t (:foreground ,lcars-tng-orange-2
                             :background ,lcars-tng-bg
                             :underline nil
                             :weight bold
                             :box (:line-width 6 :color ,lcars-tng-bg)))))
   `(helm-selection ((t (:background ,lcars-tng-gray))))
   `(helm-selection-line ((t (:background ,lcars-tng-gray))))
   `(helm-visible-mark ((t (:foreground ,lcars-tng-bg :foreground ,lcars-tng-orange-2))))
   `(helm-candidate-number ((t (:foreground ,lcars-tng-green :background ,lcars-tng-bg-1))))
   `(helm-separator ((t (:background ,lcars-tng-bg :foreground ,lcars-tng-red-1))))
   `(helm-M-x-key ((t (:foreground ,lcars-tng-orange-1))))
   `(helm-bookmark-addressbook ((t (:foreground ,lcars-tng-orange-1))))
   `(helm-bookmark-directory ((t (:foreground nil :background nil :inherit helm-ff-directory))))
   `(helm-bookmark-file ((t (:foreground nil :background nil :inherit helm-ff-file))))
   `(helm-bookmark-gnus ((t (:foreground ,lcars-tng-purple))))
   `(helm-bookmark-info ((t (:foreground ,lcars-tng-green))))
   `(helm-bookmark-man ((t (:foreground ,lcars-tng-orange-2))))
   `(helm-bookmark-w3m ((t (:foreground ,lcars-tng-purple))))
   `(helm-match ((t (:foreground ,lcars-tng-orange-2))))
   `(helm-ff-directory ((t (:foreground ,lcars-tng-cyan :background ,lcars-tng-bg :weight bold))))
   `(helm-ff-file ((t (:foreground ,lcars-tng-fg :background ,lcars-tng-bg :weight normal))))
   `(helm-ff-executable ((t (:foreground ,lcars-tng-green :background ,lcars-tng-bg :weight normal))))
   `(helm-ff-invalid-symlink ((t (:foreground ,lcars-tng-red-1 :background ,lcars-tng-bg :weight bold))))
   `(helm-ff-symlink ((t (:foreground ,lcars-tng-orange-2 :background ,lcars-tng-bg :weight bold))))
   `(helm-ff-prefix ((t (:foreground ,lcars-tng-bg :background ,lcars-tng-orange-2 :weight normal))))
   `(helm-buffer-not-saved ((t (:foreground ,lcars-tng-red-1))))
   `(helm-buffer-process ((t (:foreground ,lcars-tng-mono-2))))
   `(helm-buffer-saved-out ((t (:foreground ,lcars-tng-fg))))
   `(helm-buffer-size ((t (:foreground ,lcars-tng-mono-2))))
   `(helm-grep-cmd-line ((t (:foreground ,lcars-tng-cyan))))
   `(helm-grep-file ((t (:foreground ,lcars-tng-fg))))
   `(helm-grep-finish ((t (:foreground ,lcars-tng-green))))
   `(helm-grep-lineno ((t (:foreground ,lcars-tng-mono-2))))
   `(helm-grep-finish ((t (:foreground ,lcars-tng-red-1))))
   `(helm-grep-match ((t (:foreground nil :background nil :inherit helm-match))))

   ;; git-commit
   `(git-commit-comment-action  ((t (:foreground ,lcars-tng-green :weight bold))))
   `(git-commit-comment-branch  ((t (:foreground ,lcars-tng-blue :weight bold))))
   `(git-commit-comment-heading ((t (:foreground ,lcars-tng-orange-2 :weight bold))))

   ;; magit
   `(magit-section-highlight ((t (:background ,lcars-tng-bg-hl))))
   `(magit-section-heading ((t (:foreground ,lcars-tng-orange-2 :weight bold))))
   `(magit-section-heading-selection ((t (:foreground ,lcars-tng-fg :weight bold))))
   `(magit-diff-file-heading ((t (:weight bold))))
   `(magit-diff-file-heading-highlight ((t (:background ,lcars-tng-gray :weight bold))))
   `(magit-diff-file-heading-selection ((t (:foreground ,lcars-tng-orange-2 :background ,lcars-tng-bg-hl :weight bold))))
   `(magit-diff-hunk-heading ((t (:foreground ,lcars-tng-mono-2 :background ,lcars-tng-gray))))
   `(magit-diff-hunk-heading-highlight ((t (:foreground ,lcars-tng-mono-1 :background ,lcars-tng-mono-3))))
   `(magit-diff-hunk-heading-selection ((t (:foreground ,lcars-tng-purple :background ,lcars-tng-mono-3))))
   `(magit-diff-context ((t (:foreground ,lcars-tng-fg))))
   `(magit-diff-context-highlight ((t (:background ,lcars-tng-bg-1 :foreground ,lcars-tng-fg))))
   `(magit-diffstat-added ((t (:foreground ,lcars-tng-green))))
   `(magit-diffstat-removed ((t (:foreground ,lcars-tng-red-1))))
   `(magit-process-ok ((t (:foreground ,lcars-tng-green))))
   `(magit-process-ng ((t (:foreground ,lcars-tng-red-1))))
   `(magit-log-author ((t (:foreground ,lcars-tng-orange-2))))
   `(magit-log-date ((t (:foreground ,lcars-tng-mono-2))))
   `(magit-log-graph ((t (:foreground ,lcars-tng-silver))))
   `(magit-sequence-pick ((t (:foreground ,lcars-tng-orange-2))))
   `(magit-sequence-stop ((t (:foreground ,lcars-tng-green))))
   `(magit-sequence-part ((t (:foreground ,lcars-tng-orange-1))))
   `(magit-sequence-head ((t (:foreground ,lcars-tng-blue))))
   `(magit-sequence-drop ((t (:foreground ,lcars-tng-red-1))))
   `(magit-sequence-done ((t (:foreground ,lcars-tng-mono-2))))
   `(magit-sequence-onto ((t (:foreground ,lcars-tng-mono-2))))
   `(magit-bisect-good ((t (:foreground ,lcars-tng-green))))
   `(magit-bisect-skip ((t (:foreground ,lcars-tng-orange-1))))
   `(magit-bisect-bad ((t (:foreground ,lcars-tng-red-1))))
   `(magit-blame-heading ((t (:background ,lcars-tng-bg-1 :foreground ,lcars-tng-mono-2))))
   `(magit-blame-hash ((t (:background ,lcars-tng-bg-1 :foreground ,lcars-tng-purple))))
   `(magit-blame-name ((t (:background ,lcars-tng-bg-1 :foreground ,lcars-tng-orange-2))))
   `(magit-blame-date ((t (:background ,lcars-tng-bg-1 :foreground ,lcars-tng-mono-3))))
   `(magit-blame-summary ((t (:background ,lcars-tng-bg-1 :foreground ,lcars-tng-mono-2))))
   `(magit-dimmed ((t (:foreground ,lcars-tng-mono-2))))
   `(magit-hash ((t (:foreground ,lcars-tng-purple))))
   `(magit-tag  ((t (:foreground ,lcars-tng-orange-1 :weight bold))))
   `(magit-branch-remote  ((t (:foreground ,lcars-tng-green :weight bold))))
   `(magit-branch-local   ((t (:foreground ,lcars-tng-blue :weight bold))))
   `(magit-branch-current ((t (:foreground ,lcars-tng-blue :weight bold :box t))))
   `(magit-head           ((t (:foreground ,lcars-tng-blue :weight bold))))
   `(magit-refname        ((t (:background ,lcars-tng-bg :foreground ,lcars-tng-fg :weight bold))))
   `(magit-refname-stash  ((t (:background ,lcars-tng-bg :foreground ,lcars-tng-fg :weight bold))))
   `(magit-refname-wip    ((t (:background ,lcars-tng-bg :foreground ,lcars-tng-fg :weight bold))))
   `(magit-signature-good      ((t (:foreground ,lcars-tng-green))))
   `(magit-signature-bad       ((t (:foreground ,lcars-tng-red-1))))
   `(magit-signature-untrusted ((t (:foreground ,lcars-tng-orange-1))))
   `(magit-cherry-unmatched    ((t (:foreground ,lcars-tng-cyan))))
   `(magit-cherry-equivalent   ((t (:foreground ,lcars-tng-purple))))
   `(magit-reflog-commit       ((t (:foreground ,lcars-tng-green))))
   `(magit-reflog-amend        ((t (:foreground ,lcars-tng-purple))))
   `(magit-reflog-merge        ((t (:foreground ,lcars-tng-green))))
   `(magit-reflog-checkout     ((t (:foreground ,lcars-tng-blue))))
   `(magit-reflog-reset        ((t (:foreground ,lcars-tng-red-1))))
   `(magit-reflog-rebase       ((t (:foreground ,lcars-tng-purple))))
   `(magit-reflog-cherry-pick  ((t (:foreground ,lcars-tng-green))))
   `(magit-reflog-remote       ((t (:foreground ,lcars-tng-cyan))))
   `(magit-reflog-other        ((t (:foreground ,lcars-tng-cyan))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,lcars-tng-fg))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,lcars-tng-purple))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,lcars-tng-blue))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,lcars-tng-cyan))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,lcars-tng-green))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,lcars-tng-orange-1))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,lcars-tng-orange-2))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,lcars-tng-red-1))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,lcars-tng-red-2))))
   `(rainbow-delimiters-depth-10-face ((t (:foreground ,lcars-tng-mono-1))))
   `(rainbow-delimiters-depth-11-face ((t (:foreground ,lcars-tng-mono-2))))
   `(rainbow-delimiters-depth-12-face ((t (:foreground ,lcars-tng-mono-3))))
   `(rainbow-delimiters-unmatched-face ((t (:foreground ,lcars-tng-black))))

   ;; rbenv
   `(rbenv-active-ruby-face ((t (:foreground ,lcars-tng-green))))

   ;; smartparens
   `(sp-show-pair-mismatch-face ((t (:foreground ,lcars-tng-red-1 :background ,lcars-tng-gray :weight bold))))
   `(sp-show-pair-match-face ((t (:background ,lcars-tng-gray :weight bold))))

   ;; web-mode
   `(web-mode-symbol-face ((t (:foreground ,lcars-tng-orange-1))))

   ;; flx-ido
   '(flx-highlight-face ((t (:inherit (link) :weight bold))))

   ;; neo
   `(neo-root-dir-face ((t (:foreground ,lcars-tng-purple))))
   `(neo-expand-btn-face ((t (:foreground ,lcars-tng-blue))))
   `(neo-dir-link-face ((t (:foreground ,lcars-tng-orange-1))))
   `(neo-file-link-face ((t (:foreground ,lcars-tng-fg))))
   `(neo-header-face ((t (:foreground ,lcars-tng-gray))))

   ;; web-mode
   `(web-mode-html-attr-name-face ((t (:foreground ,lcars-tng-purple))))
   `(web-mode-html-tag-face ((t (:foreground ,lcars-tng-orange-1))))
   `(web-mode-symbol-face ((t (:foreground ,lcars-tng-purple))))
   ))


;;;###autoload
(and load-file-name
    (boundp 'custom-theme-load-path)
    (add-to-list 'custom-theme-load-path
                 (file-name-as-directory
                  (file-name-directory load-file-name))))
;; Automatically add this theme to the load path

(provide-theme 'lcars-tng)

;; Local Variables:
;; no-byte-compile: t
;; End:
;;; lcars-tng-theme.el ends here
