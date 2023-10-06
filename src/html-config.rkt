#lang at-exp typed/racket

(require morg/html
         morg
         (prefix-in eq: morg/eq-reasoning/html))

(define custom-css-name "topos.css")

(define custom-css
  @%{
    .@|statement-body-class-name| {
      background-color: #F4FDFD;
      padding: 0.5em;
    }
    .@|statement-header-class-name| {
      padding: 0.5em;
      background-color: #E3FDFD;
    }
    .@|proof-class-name| {
      background-color: #F4F8F8;
      padding: 0.5em;
    }
  })

(provide-config
 (compose-config
  eq:config-update
  (config-add-css custom-css-name custom-css)
  (config-set-base-url "https://uemurax.github.io/synthetic-topos-theory")))
