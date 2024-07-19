
<!DOCTYPE HTML>
<!--
	Strongly Typed by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Strongly Typed by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<style>

Font Awesome Free 5.15.4 by @fontawesome - https://fontawesome.com
License - https://fontawesome.com/license/free (Icons: CC BY 4.0, Fonts: SIL OFL 1.1, Code: MIT License)

@import url("fontawesome-all.min.css");

@import
	url("https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600|Arvo:700")
	;

/*
	Strongly Typed by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}

article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
}

body {
	line-height: 1;
}

ol, ul {
	list-style: none;
}

blockquote, q {
	quotes: none;
}

blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

body {
	-webkit-text-size-adjust: none;
}

mark {
	background-color: transparent;
	color: inherit;
}

input::-moz-focus-inner {
	border: 0;
	padding: 0;
}

input, select, textarea {
	-moz-appearance: none;
	-webkit-appearance: none;
	-ms-appearance: none;
	appearance: none;
}

/* Basic */
html {
	box-sizing: border-box;
}

*, *:before, *:after {
	box-sizing: inherit;
}

body {
	background: #f0f0f0;
}

body.is-preload *, body.is-preload *:before, body.is-preload *:after {
	-moz-animation: none !important;
	-webkit-animation: none !important;
	-ms-animation: none !important;
	animation: none !important;
	-moz-transition: none !important;
	-webkit-transition: none !important;
	-ms-transition: none !important;
	transition: none !important;
}

body, input, textarea, select {
	font-family: 'Source Sans Pro';
	font-weight: 300;
	color: #777;
	line-height: 1.65em;
	font-size: 15pt;
}

h1, h2, h3, h4, h5, h6 {
	font-weight: 600;
	text-transform: uppercase;
	color: #888;
}

h1 a, h2 a, h3 a, h4 a, h5 a, h6 a {
	color: inherit;
	text-decoration: none;
	border: 0;
}

h2 {
	font-size: 1.65em;
	font-weight: 400;
	letter-spacing: 4px;
	margin: 0 0 1.5em 0;
	line-height: 1.75em;
}

h3 {
	font-size: 1em;
	letter-spacing: 2px;
	margin: 0 0 1.25em 0;
}

a {
	-moz-transition: color 0.25s ease-in-out, border-bottom-color 0.25s
		ease-in-out;
	-webkit-transition: color 0.25s ease-in-out, border-bottom-color 0.25s
		ease-in-out;
	-ms-transition: color 0.25s ease-in-out, border-bottom-color 0.25s
		ease-in-out;
	transition: color 0.25s ease-in-out, border-bottom-color 0.25s
		ease-in-out;
	color: #666;
	text-decoration: none;
	border-bottom: solid 1px #ddd;
}

a strong {
	-moz-transition: color 0.25s ease-in-out, border-bottom-color 0.25s
		ease-in-out;
	-webkit-transition: color 0.25s ease-in-out, border-bottom-color 0.25s
		ease-in-out;
	-ms-transition: color 0.25s ease-in-out, border-bottom-color 0.25s
		ease-in-out;
	transition: color 0.25s ease-in-out, border-bottom-color 0.25s
		ease-in-out;
}

a:hover {
	color: #ed786a;
	border-bottom-color: rgba(255, 255, 255, 0);
}

a:hover strong {
	color: #ed786a;
}

strong, b {
	font-weight: 600;
	color: #666;
}

em, i {
	font-style: italic;
}

sub {
	position: relative;
	top: 0.5em;
	font-size: 0.8em;
}

sup {
	position: relative;
	top: -0.5em;
	font-size: 0.8em;
}

hr {
	border: 0;
	border-top: solid 1px #ddd;
}

blockquote {
	border-left: solid 0.5em #ddd;
	padding: 1em 0 1em 2em;
	font-style: italic;
}

p {
	text-align: justify;
	margin-bottom: 2em;
}

ul, ol, dl, table, blockquote {
	margin-bottom: 2em;
}

br.clear {
	clear: both;
}

/* Container */
.container {
	margin: 0 auto;
	max-width: 100%;
	width: 70em;
}

@media screen and (max-width: 1680px) {
	.container {
		width: 68em;
	}
}

@media screen and (max-width: 1280px) {
	.container {
		width: calc(100% - 80px);
	}
}

@media screen and (max-width: 980px) {
	.container {
		width: calc(100% - 100px);
	}
}

@media screen and (max-width: 736px) {
	.container {
		width: calc(100% - 40px);
	}
}

/* Row */
.row {
	display: flex;
	flex-wrap: wrap;
	box-sizing: border-box;
	align-items: stretch;
}

.row>* {
	box-sizing: border-box;
}

.row.gtr-uniform>*>:last-child {
	margin-bottom: 0;
}

.row.aln-left {
	justify-content: flex-start;
}

.row.aln-center {
	justify-content: center;
}

.row.aln-right {
	justify-content: flex-end;
}

.row.aln-top {
	align-items: flex-start;
}

.row.aln-middle {
	align-items: center;
}

.row.aln-bottom {
	align-items: flex-end;
}

.row>.imp {
	order: -1;
}

.row>.col-1 {
	width: 8.33333%;
}

.row>.off-1 {
	margin-left: 8.33333%;
}

.row>.col-2 {
	width: 16.66667%;
}

.row>.off-2 {
	margin-left: 16.66667%;
}

.row>.col-3 {
	width: 25%;
}

.row>.off-3 {
	margin-left: 25%;
}

.row>.col-4 {
	width: 33.33333%;
}

.row>.off-4 {
	margin-left: 33.33333%;
}

.row>.col-5 {
	width: 41.66667%;
}

.row>.off-5 {
	margin-left: 41.66667%;
}

.row>.col-6 {
	width: 50%;
}

.row>.off-6 {
	margin-left: 50%;
}

.row>.col-7 {
	width: 58.33333%;
}

.row>.off-7 {
	margin-left: 58.33333%;
}

.row>.col-8 {
	width: 66.66667%;
}

.row>.off-8 {
	margin-left: 66.66667%;
}

.row>.col-9 {
	width: 75%;
}

.row>.off-9 {
	margin-left: 75%;
}

.row>.col-10 {
	width: 83.33333%;
}

.row>.off-10 {
	margin-left: 83.33333%;
}

.row>.col-11 {
	width: 91.66667%;
}

.row>.off-11 {
	margin-left: 91.66667%;
}

.row>.col-12 {
	width: 100%;
}

.row>.off-12 {
	margin-left: 100%;
}

.row.gtr-0 {
	margin-top: 0px;
	margin-left: 0px;
}

.row.gtr-0>* {
	padding: 0px 0 0 0px;
}

.row.gtr-0.gtr-uniform {
	margin-top: 0px;
}

.row.gtr-0.gtr-uniform>* {
	padding-top: 0px;
}

.row.gtr-25 {
	margin-top: -12.5px;
	margin-left: -12.5px;
}

.row.gtr-25>* {
	padding: 12.5px 0 0 12.5px;
}

.row.gtr-25.gtr-uniform {
	margin-top: -12.5px;
}

.row.gtr-25.gtr-uniform>* {
	padding-top: 12.5px;
}

.row.gtr-50 {
	margin-top: -25px;
	margin-left: -25px;
}

.row.gtr-50>* {
	padding: 25px 0 0 25px;
}

.row.gtr-50.gtr-uniform {
	margin-top: -25px;
}

.row.gtr-50.gtr-uniform>* {
	padding-top: 25px;
}

.row {
	margin-top: -50px;
	margin-left: -50px;
}

.row>* {
	padding: 50px 0 0 50px;
}

.row.gtr-uniform {
	margin-top: -50px;
}

.row.gtr-uniform>* {
	padding-top: 50px;
}

.row.gtr-150 {
	margin-top: -75px;
	margin-left: -75px;
}

.row.gtr-150>* {
	padding: 75px 0 0 75px;
}

.row.gtr-150.gtr-uniform {
	margin-top: -75px;
}

.row.gtr-150.gtr-uniform>* {
	padding-top: 75px;
}

.row.gtr-200 {
	margin-top: -100px;
	margin-left: -100px;
}

.row.gtr-200>* {
	padding: 100px 0 0 100px;
}

.row.gtr-200.gtr-uniform {
	margin-top: -100px;
}

.row.gtr-200.gtr-uniform>* {
	padding-top: 100px;
}

@media screen and (max-width: 1680px) {
	.row {
		display: flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		align-items: stretch;
	}
	.row>* {
		box-sizing: border-box;
	}
	.row.gtr-uniform>*>:last-child {
		margin-bottom: 0;
	}
	.row.aln-left {
		justify-content: flex-start;
	}
	.row.aln-center {
		justify-content: center;
	}
	.row.aln-right {
		justify-content: flex-end;
	}
	.row.aln-top {
		align-items: flex-start;
	}
	.row.aln-middle {
		align-items: center;
	}
	.row.aln-bottom {
		align-items: flex-end;
	}
	.row>.imp-xlarge {
		order: -1;
	}
	.row>.col-1-xlarge {
		width: 8.33333%;
	}
	.row>.off-1-xlarge {
		margin-left: 8.33333%;
	}
	.row>.col-2-xlarge {
		width: 16.66667%;
	}
	.row>.off-2-xlarge {
		margin-left: 16.66667%;
	}
	.row>.col-3-xlarge {
		width: 25%;
	}
	.row>.off-3-xlarge {
		margin-left: 25%;
	}
	.row>.col-4-xlarge {
		width: 33.33333%;
	}
	.row>.off-4-xlarge {
		margin-left: 33.33333%;
	}
	.row>.col-5-xlarge {
		width: 41.66667%;
	}
	.row>.off-5-xlarge {
		margin-left: 41.66667%;
	}
	.row>.col-6-xlarge {
		width: 50%;
	}
	.row>.off-6-xlarge {
		margin-left: 50%;
	}
	.row>.col-7-xlarge {
		width: 58.33333%;
	}
	.row>.off-7-xlarge {
		margin-left: 58.33333%;
	}
	.row>.col-8-xlarge {
		width: 66.66667%;
	}
	.row>.off-8-xlarge {
		margin-left: 66.66667%;
	}
	.row>.col-9-xlarge {
		width: 75%;
	}
	.row>.off-9-xlarge {
		margin-left: 75%;
	}
	.row>.col-10-xlarge {
		width: 83.33333%;
	}
	.row>.off-10-xlarge {
		margin-left: 83.33333%;
	}
	.row>.col-11-xlarge {
		width: 91.66667%;
	}
	.row>.off-11-xlarge {
		margin-left: 91.66667%;
	}
	.row>.col-12-xlarge {
		width: 100%;
	}
	.row>.off-12-xlarge {
		margin-left: 100%;
	}
	.row.gtr-0 {
		margin-top: 0px;
		margin-left: 0px;
	}
	.row.gtr-0>* {
		padding: 0px 0 0 0px;
	}
	.row.gtr-0.gtr-uniform {
		margin-top: 0px;
	}
	.row.gtr-0.gtr-uniform>* {
		padding-top: 0px;
	}
	.row.gtr-25 {
		margin-top: -12.5px;
		margin-left: -12.5px;
	}
	.row.gtr-25>* {
		padding: 12.5px 0 0 12.5px;
	}
	.row.gtr-25.gtr-uniform {
		margin-top: -12.5px;
	}
	.row.gtr-25.gtr-uniform>* {
		padding-top: 12.5px;
	}
	.row.gtr-50 {
		margin-top: -25px;
		margin-left: -25px;
	}
	.row.gtr-50>* {
		padding: 25px 0 0 25px;
	}
	.row.gtr-50.gtr-uniform {
		margin-top: -25px;
	}
	.row.gtr-50.gtr-uniform>* {
		padding-top: 25px;
	}
	.row {
		margin-top: -50px;
		margin-left: -50px;
	}
	.row>* {
		padding: 50px 0 0 50px;
	}
	.row.gtr-uniform {
		margin-top: -50px;
	}
	.row.gtr-uniform>* {
		padding-top: 50px;
	}
	.row.gtr-150 {
		margin-top: -75px;
		margin-left: -75px;
	}
	.row.gtr-150>* {
		padding: 75px 0 0 75px;
	}
	.row.gtr-150.gtr-uniform {
		margin-top: -75px;
	}
	.row.gtr-150.gtr-uniform>* {
		padding-top: 75px;
	}
	.row.gtr-200 {
		margin-top: -100px;
		margin-left: -100px;
	}
	.row.gtr-200>* {
		padding: 100px 0 0 100px;
	}
	.row.gtr-200.gtr-uniform {
		margin-top: -100px;
	}
	.row.gtr-200.gtr-uniform>* {
		padding-top: 100px;
	}
}

@media screen and (max-width: 1280px) {
	.row {
		display: flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		align-items: stretch;
	}
	.row>* {
		box-sizing: border-box;
	}
	.row.gtr-uniform>*>:last-child {
		margin-bottom: 0;
	}
	.row.aln-left {
		justify-content: flex-start;
	}
	.row.aln-center {
		justify-content: center;
	}
	.row.aln-right {
		justify-content: flex-end;
	}
	.row.aln-top {
		align-items: flex-start;
	}
	.row.aln-middle {
		align-items: center;
	}
	.row.aln-bottom {
		align-items: flex-end;
	}
	.row>.imp-large {
		order: -1;
	}
	.row>.col-1-large {
		width: 8.33333%;
	}
	.row>.off-1-large {
		margin-left: 8.33333%;
	}
	.row>.col-2-large {
		width: 16.66667%;
	}
	.row>.off-2-large {
		margin-left: 16.66667%;
	}
	.row>.col-3-large {
		width: 25%;
	}
	.row>.off-3-large {
		margin-left: 25%;
	}
	.row>.col-4-large {
		width: 33.33333%;
	}
	.row>.off-4-large {
		margin-left: 33.33333%;
	}
	.row>.col-5-large {
		width: 41.66667%;
	}
	.row>.off-5-large {
		margin-left: 41.66667%;
	}
	.row>.col-6-large {
		width: 50%;
	}
	.row>.off-6-large {
		margin-left: 50%;
	}
	.row>.col-7-large {
		width: 58.33333%;
	}
	.row>.off-7-large {
		margin-left: 58.33333%;
	}
	.row>.col-8-large {
		width: 66.66667%;
	}
	.row>.off-8-large {
		margin-left: 66.66667%;
	}
	.row>.col-9-large {
		width: 75%;
	}
	.row>.off-9-large {
		margin-left: 75%;
	}
	.row>.col-10-large {
		width: 83.33333%;
	}
	.row>.off-10-large {
		margin-left: 83.33333%;
	}
	.row>.col-11-large {
		width: 91.66667%;
	}
	.row>.off-11-large {
		margin-left: 91.66667%;
	}
	.row>.col-12-large {
		width: 100%;
	}
	.row>.off-12-large {
		margin-left: 100%;
	}
	.row.gtr-0 {
		margin-top: 0px;
		margin-left: 0px;
	}
	.row.gtr-0>* {
		padding: 0px 0 0 0px;
	}
	.row.gtr-0.gtr-uniform {
		margin-top: 0px;
	}
	.row.gtr-0.gtr-uniform>* {
		padding-top: 0px;
	}
	.row.gtr-25 {
		margin-top: -10px;
		margin-left: -10px;
	}
	.row.gtr-25>* {
		padding: 10px 0 0 10px;
	}
	.row.gtr-25.gtr-uniform {
		margin-top: -10px;
	}
	.row.gtr-25.gtr-uniform>* {
		padding-top: 10px;
	}
	.row.gtr-50 {
		margin-top: -20px;
		margin-left: -20px;
	}
	.row.gtr-50>* {
		padding: 20px 0 0 20px;
	}
	.row.gtr-50.gtr-uniform {
		margin-top: -20px;
	}
	.row.gtr-50.gtr-uniform>* {
		padding-top: 20px;
	}
	.row {
		margin-top: -40px;
		margin-left: -40px;
	}
	.row>* {
		padding: 40px 0 0 40px;
	}
	.row.gtr-uniform {
		margin-top: -40px;
	}
	.row.gtr-uniform>* {
		padding-top: 40px;
	}
	.row.gtr-150 {
		margin-top: -60px;
		margin-left: -60px;
	}
	.row.gtr-150>* {
		padding: 60px 0 0 60px;
	}
	.row.gtr-150.gtr-uniform {
		margin-top: -60px;
	}
	.row.gtr-150.gtr-uniform>* {
		padding-top: 60px;
	}
	.row.gtr-200 {
		margin-top: -80px;
		margin-left: -80px;
	}
	.row.gtr-200>* {
		padding: 80px 0 0 80px;
	}
	.row.gtr-200.gtr-uniform {
		margin-top: -80px;
	}
	.row.gtr-200.gtr-uniform>* {
		padding-top: 80px;
	}
}

@media screen and (max-width: 980px) {
	.row {
		display: flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		align-items: stretch;
	}
	.row>* {
		box-sizing: border-box;
	}
	.row.gtr-uniform>*>:last-child {
		margin-bottom: 0;
	}
	.row.aln-left {
		justify-content: flex-start;
	}
	.row.aln-center {
		justify-content: center;
	}
	.row.aln-right {
		justify-content: flex-end;
	}
	.row.aln-top {
		align-items: flex-start;
	}
	.row.aln-middle {
		align-items: center;
	}
	.row.aln-bottom {
		align-items: flex-end;
	}
	.row>.imp-medium {
		order: -1;
	}
	.row>.col-1-medium {
		width: 8.33333%;
	}
	.row>.off-1-medium {
		margin-left: 8.33333%;
	}
	.row>.col-2-medium {
		width: 16.66667%;
	}
	.row>.off-2-medium {
		margin-left: 16.66667%;
	}
	.row>.col-3-medium {
		width: 25%;
	}
	.row>.off-3-medium {
		margin-left: 25%;
	}
	.row>.col-4-medium {
		width: 33.33333%;
	}
	.row>.off-4-medium {
		margin-left: 33.33333%;
	}
	.row>.col-5-medium {
		width: 41.66667%;
	}
	.row>.off-5-medium {
		margin-left: 41.66667%;
	}
	.row>.col-6-medium {
		width: 50%;
	}
	.row>.off-6-medium {
		margin-left: 50%;
	}
	.row>.col-7-medium {
		width: 58.33333%;
	}
	.row>.off-7-medium {
		margin-left: 58.33333%;
	}
	.row>.col-8-medium {
		width: 66.66667%;
	}
	.row>.off-8-medium {
		margin-left: 66.66667%;
	}
	.row>.col-9-medium {
		width: 75%;
	}
	.row>.off-9-medium {
		margin-left: 75%;
	}
	.row>.col-10-medium {
		width: 83.33333%;
	}
	.row>.off-10-medium {
		margin-left: 83.33333%;
	}
	.row>.col-11-medium {
		width: 91.66667%;
	}
	.row>.off-11-medium {
		margin-left: 91.66667%;
	}
	.row>.col-12-medium {
		width: 100%;
	}
	.row>.off-12-medium {
		margin-left: 100%;
	}
	.row.gtr-0 {
		margin-top: 0px;
		margin-left: 0px;
	}
	.row.gtr-0>* {
		padding: 0px 0 0 0px;
	}
	.row.gtr-0.gtr-uniform {
		margin-top: 0px;
	}
	.row.gtr-0.gtr-uniform>* {
		padding-top: 0px;
	}
	.row.gtr-25 {
		margin-top: -12.5px;
		margin-left: -12.5px;
	}
	.row.gtr-25>* {
		padding: 12.5px 0 0 12.5px;
	}
	.row.gtr-25.gtr-uniform {
		margin-top: -12.5px;
	}
	.row.gtr-25.gtr-uniform>* {
		padding-top: 12.5px;
	}
	.row.gtr-50 {
		margin-top: -25px;
		margin-left: -25px;
	}
	.row.gtr-50>* {
		padding: 25px 0 0 25px;
	}
	.row.gtr-50.gtr-uniform {
		margin-top: -25px;
	}
	.row.gtr-50.gtr-uniform>* {
		padding-top: 25px;
	}
	.row {
		margin-top: -50px;
		margin-left: -50px;
	}
	.row>* {
		padding: 50px 0 0 50px;
	}
	.row.gtr-uniform {
		margin-top: -50px;
	}
	.row.gtr-uniform>* {
		padding-top: 50px;
	}
	.row.gtr-150 {
		margin-top: -75px;
		margin-left: -75px;
	}
	.row.gtr-150>* {
		padding: 75px 0 0 75px;
	}
	.row.gtr-150.gtr-uniform {
		margin-top: -75px;
	}
	.row.gtr-150.gtr-uniform>* {
		padding-top: 75px;
	}
	.row.gtr-200 {
		margin-top: -100px;
		margin-left: -100px;
	}
	.row.gtr-200>* {
		padding: 100px 0 0 100px;
	}
	.row.gtr-200.gtr-uniform {
		margin-top: -100px;
	}
	.row.gtr-200.gtr-uniform>* {
		padding-top: 100px;
	}
}

@media screen and (max-width: 736px) {
	.row {
		display: flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		align-items: stretch;
	}
	.row>* {
		box-sizing: border-box;
	}
	.row.gtr-uniform>*>:last-child {
		margin-bottom: 0;
	}
	.row.aln-left {
		justify-content: flex-start;
	}
	.row.aln-center {
		justify-content: center;
	}
	.row.aln-right {
		justify-content: flex-end;
	}
	.row.aln-top {
		align-items: flex-start;
	}
	.row.aln-middle {
		align-items: center;
	}
	.row.aln-bottom {
		align-items: flex-end;
	}
	.row>.imp-small {
		order: -1;
	}
	.row>.col-1-small {
		width: 8.33333%;
	}
	.row>.off-1-small {
		margin-left: 8.33333%;
	}
	.row>.col-2-small {
		width: 16.66667%;
	}
	.row>.off-2-small {
		margin-left: 16.66667%;
	}
	.row>.col-3-small {
		width: 25%;
	}
	.row>.off-3-small {
		margin-left: 25%;
	}
	.row>.col-4-small {
		width: 33.33333%;
	}
	.row>.off-4-small {
		margin-left: 33.33333%;
	}
	.row>.col-5-small {
		width: 41.66667%;
	}
	.row>.off-5-small {
		margin-left: 41.66667%;
	}
	.row>.col-6-small {
		width: 50%;
	}
	.row>.off-6-small {
		margin-left: 50%;
	}
	.row>.col-7-small {
		width: 58.33333%;
	}
	.row>.off-7-small {
		margin-left: 58.33333%;
	}
	.row>.col-8-small {
		width: 66.66667%;
	}
	.row>.off-8-small {
		margin-left: 66.66667%;
	}
	.row>.col-9-small {
		width: 75%;
	}
	.row>.off-9-small {
		margin-left: 75%;
	}
	.row>.col-10-small {
		width: 83.33333%;
	}
	.row>.off-10-small {
		margin-left: 83.33333%;
	}
	.row>.col-11-small {
		width: 91.66667%;
	}
	.row>.off-11-small {
		margin-left: 91.66667%;
	}
	.row>.col-12-small {
		width: 100%;
	}
	.row>.off-12-small {
		margin-left: 100%;
	}
	.row.gtr-0 {
		margin-top: 0px;
		margin-left: 0px;
	}
	.row.gtr-0>* {
		padding: 0px 0 0 0px;
	}
	.row.gtr-0.gtr-uniform {
		margin-top: 0px;
	}
	.row.gtr-0.gtr-uniform>* {
		padding-top: 0px;
	}
	.row.gtr-25 {
		margin-top: -7.5px;
		margin-left: -7.5px;
	}
	.row.gtr-25>* {
		padding: 7.5px 0 0 7.5px;
	}
	.row.gtr-25.gtr-uniform {
		margin-top: -7.5px;
	}
	.row.gtr-25.gtr-uniform>* {
		padding-top: 7.5px;
	}
	.row.gtr-50 {
		margin-top: -15px;
		margin-left: -15px;
	}
	.row.gtr-50>* {
		padding: 15px 0 0 15px;
	}
	.row.gtr-50.gtr-uniform {
		margin-top: -15px;
	}
	.row.gtr-50.gtr-uniform>* {
		padding-top: 15px;
	}
	.row {
		margin-top: -30px;
		margin-left: -30px;
	}
	.row>* {
		padding: 30px 0 0 30px;
	}
	.row.gtr-uniform {
		margin-top: -30px;
	}
	.row.gtr-uniform>* {
		padding-top: 30px;
	}
	.row.gtr-150 {
		margin-top: -45px;
		margin-left: -45px;
	}
	.row.gtr-150>* {
		padding: 45px 0 0 45px;
	}
	.row.gtr-150.gtr-uniform {
		margin-top: -45px;
	}
	.row.gtr-150.gtr-uniform>* {
		padding-top: 45px;
	}
	.row.gtr-200 {
		margin-top: -60px;
		margin-left: -60px;
	}
	.row.gtr-200>* {
		padding: 60px 0 0 60px;
	}
	.row.gtr-200.gtr-uniform {
		margin-top: -60px;
	}
	.row.gtr-200.gtr-uniform>* {
		padding-top: 60px;
	}
}

/* Sections/Article */
section, article {
	margin-bottom: 3em;
}

section>:last-child, article>:last-child, section:last-child, article:last-child
	{
	margin-bottom: 0;
}

/* Image */
.image {
	-moz-transition: opacity 0.25s ease-in-out;
	-webkit-transition: opacity 0.25s ease-in-out;
	-ms-transition: opacity 0.25s ease-in-out;
	transition: opacity 0.25s ease-in-out;
	display: inline-block;
	border: solid 6px #ebebeb !important;
}

.image:hover {
	opacity: 0.9;
}

.image img {
	display: block;
	width: 100%;
}

.image.fit {
	display: block;
	width: 100%;
}

.image.featured {
	display: block;
	width: 100%;
	margin: 0 0 3.5em 0;
}

.image.left {
	float: left;
	margin: 0 1.5em 1.5em 0;
	position: relative;
	top: 0.5em;
}

.image.centered {
	display: block;
	margin: 0 0 2em 0;
}

.image.centered img {
	margin: 0 auto;
	width: auto;
}

/* List */
ul {
	list-style: disc;
	padding-left: 1em;
}

ul li {
	padding-left: 0.5em;
	margin: 0.75em 0 0.75em 0;
}

ul li:first-child {
	margin-top: 0;
}

ol {
	list-style: decimal;
	padding-left: 1em;
}

ol li {
	padding-left: 0.5em;
	margin: 0.75em 0 0.75em 0;
}

ol li:first-child {
	margin-top: 0;
}

/* Links */
ul.links {
	list-style: none;
	padding-left: 0;
}

ul.links li {
	display: inline;
	border-left: solid 1px #d0d0d0;
	padding-left: 1em;
	margin: 0 0 0 1em;
}

ul.links li:first-child {
	margin-left: 0;
	padding-left: 0;
	border-left: 0;
}

/* Actions */
ul.actions {
	margin-top: 2.5em;
	clear: both;
	list-style: none;
	padding-left: 0;
}

ul.actions li {
	padding-left: 0;
	display: inline-block;
	margin: 0 0 0 1em;
}

ul.actions li:first-child {
	margin-left: 0;
}

/* Divided */
ul.divided {
	list-style: none;
	padding-left: 0;
}

ul.divided li {
	border-top: solid 2px #e5e5e5;
	padding-left: 0;
	margin: 2.5em 0 0 0;
	padding: 2.5em 0 0 0;
}

ul.divided li:first-child {
	border-top: 0;
	margin-top: 0;
	padding-top: 0;
}

/* Icons */
ul.icons {
	list-style: none;
	padding-left: 0;
}

ul.icons>li {
	position: relative;
	padding: 2em 0 0 3em;
	margin: 0;
}

ul.icons>li:before {
	position: absolute;
	left: 0;
	top: 2.6em;
	display: block;
	font-size: 0.8em;
	background: #878787;
	color: #e4e4e4;
	width: 2em;
	height: 2em;
	border-radius: 2em;
	line-height: 2em;
	text-align: center;
	box-shadow: 0.125em 0.175em 0 0 rgba(0, 0, 0, 0.125);
}

ul.icons>li:first-child {
	padding-top: 0;
}

ul.icons>li:first-child:before {
	top: 0;
}

/* Form */
form label {
	font-weight: 600;
	text-transform: uppercase;
	color: #888;
	display: block;
	margin: 0 0 1em 0;
}

form input[type="text"], form input[type="email"], form input[type="password"],
	form select, form textarea {
	-moz-transition: background-color 0.25s ease-in-out;
	-webkit-transition: background-color 0.25s ease-in-out;
	-ms-transition: background-color 0.25s ease-in-out;
	transition: background-color 0.25s ease-in-out;
	-webkit-appearance: none;
	display: block;
	border: 0;
	background: #e8e8e8;
	width: 100%;
	box-shadow: inset 2px 2px 0px 0px rgba(0, 0, 0, 0.1);
	border-radius: 4px;
	line-height: 1.25em;
	padding: 0.75em 1em 0.75em 1em;
}

form input[type="text"]:focus, form input[type="email"]:focus, form input[type="password"]:focus,
	form select:focus, form textarea:focus {
	background: #f0f0f0;
}

form textarea {
	min-height: 11em;
}

form ::-webkit-input-placeholder {
	color: #555 !important;
	line-height: 1.35em;
}

form :-moz-placeholder {
	color: #555 !important;
}

form ::-moz-placeholder {
	color: #555 !important;
}

form :-ms-input-placeholder {
	color: #555 !important;
}

form ::-moz-focus-inner {
	border: 0;
}

/* Table */
table {
	width: 100%;
}

table tbody tr {
	border-top: solid 1px #E5E5E5;
}

table tbody tr:first-child {
	border-top: 0;
}

table td {
	padding: 0.75em 1em 0.75em 1em;
}

table th {
	text-align: left;
	font-weight: bold;
	padding: 0.75em 1em 0.75em 1em;
}

table thead {
	background: #878787;
	color: #fff;
	font-weight: 400;
	text-transform: uppercase;
	border: 0;
	box-shadow: 0.125em 0.175em 0 0 rgba(0, 0, 0, 0.125);
	font-size: 0.85em;
	letter-spacing: 2px;
}

table tfoot {
	background: #F0F0F0;
	border-top: solid 2px #E5E5E5;
}

/* Button */
input[type="button"], input[type="submit"], input[type="reset"], button,
	.button {
	-moz-transition: all 0.25s ease-in-out;
	-webkit-transition: all 0.25s ease-in-out;
	-ms-transition: all 0.25s ease-in-out;
	transition: all 0.25s ease-in-out;
	-webkit-appearance: none;
	position: relative;
	display: inline-block;
	background: #ed786a;
	color: #fff !important;
	text-transform: uppercase;
	border-radius: 4px;
	border: 0;
	outline: 0;
	font-size: 1em;
	box-shadow: 0.125em 0.175em 0 0 rgba(0, 0, 0, 0.125);
	font-weight: 600;
	text-align: center;
	font-size: 0.85em;
	letter-spacing: 2px;
	padding: 0.85em 2.75em 0.85em 2.75em;
}

input[type="button"].icon:before, input[type="submit"].icon:before,
	input[type="reset"].icon:before, button.icon:before, .button.icon:before
	{
	position: relative;
	padding-right: 0.75em;
	opacity: 0.5;
	top: 0.05em;
}

input[type="button"]:hover, input[type="submit"]:hover, input[type="reset"]:hover,
	button:hover, .button:hover {
	background: #fd887a;
}

input[type="button"]:active, input[type="submit"]:active, input[type="reset"]:active,
	button:active, .button:active {
	background: #ed786a;
}

input[type="button"].alt, input[type="submit"].alt, input[type="reset"].alt,
	button.alt, .button.alt {
	background: #878787;
}

input[type="button"].alt:hover, input[type="submit"].alt:hover, input[type="reset"].alt:hover,
	button.alt:hover, .button.alt:hover {
	background: #979797;
}

input[type="button"].alt:active, input[type="submit"].alt:active, input[type="reset"].alt:active,
	button.alt:active, .button.alt:active {
	background: #878787;
}

/* Box */
.no-sidebar .box.post>header {
	text-align: center;
}

.box.excerpt .date {
	background: #878787;
	color: #fff;
	font-weight: 400;
	text-transform: uppercase;
	border-radius: 4px;
	border: 0;
	box-shadow: 0.125em 0.175em 0 0 rgba(0, 0, 0, 0.125);
	display: inline-block;
	font-size: 0.85em;
	letter-spacing: 2px;
	padding: 0.25em 1em 0.25em 1em;
	margin: 0 0 2.5em 0;
}

/* Icons */
.icon {
	text-decoration: none;
	position: relative;
	text-decoration: none;
}

.icon:before {
	-moz-osx-font-smoothing: grayscale;
	-webkit-font-smoothing: antialiased;
	display: inline-block;
	font-style: normal;
	font-variant: normal;
	text-rendering: auto;
	line-height: 1;
	text-transform: none !important;
	font-family: 'Font Awesome 5 Free';
	font-weight: 400;
}

.icon:before {
	line-height: inherit;
}

.icon>.label {
	display: none;
}

.icon.solid:before {
	font-weight: 900;
}

.icon.brands:before {
	font-family: 'Font Awesome 5 Brands';
}

.user-info {
	margin-bottom: 3em;
	text-align: right;
	color: #333;
	font-size: 1em;
}

.user-info button {
	margin-left: 1em;
}

/* Page Wrapper */
#page-wrapper>section {
	margin-bottom: 0;
}

/* Header */
#header {
	position: relative;
	position: relative;
	background: #fff;
	text-align: center;
}

#header>.container {
	padding: 7em 0 3em 0; 
	border-bottom: solid 7px #e5e5e5;
	box-shadow: inset 0px -8px 0px 0px #fff, inset 0px -10px 0px 0px #e5e5e5;
}

#header h1 {
	font-family: 'Arvo';
	font-weight: 700;
	color: #ed786a;
	text-shadow: 0.05em 0.075em 0 rgba(0, 0, 0, 0.1);
	font-size: 3em;
	letter-spacing: 13px;
}

#header h1 a {
	border: 0;
}

#header p {
	text-transform: uppercase;
	font-weight: 400;
	color: #888;
	margin: 2.5em 0 0 0;
	font-size: 0.85em;
	letter-spacing: 3px;
	text-align: center;
}

/* Nav */
#nav {
	position: absolute;
	top: 3em;
	left: 0;
	width: 100%;
	cursor: default;
}

#nav>ul>li {
	display: inline-block;
	padding-right: 2em;
}

#nav>ul>li:last-child {
	padding-right: 0;
}

#nav>ul>li>a {
	border: 0;
	text-decoration: none;
	text-transform: uppercase;
	font-weight: 400;
	color: #777;
	outline: 0;
	display: block;
}

#nav>ul>li>a:before {
	display: inline-block;
	background: #878787;
	color: #e4e4e4;
	width: 2.25em;
	font-size: 0.8em;
	height: 2.25em;
	border-radius: 2.25em;
	line-height: 2.1em;
	text-align: center;
	box-shadow: 0.125em 0.175em 0 0 rgba(0, 0, 0, 0.125);
	margin-right: 0.75em;
	-moz-transition: color 0.25s ease-in-out, background 0.25s ease-in-out;
	-webkit-transition: color 0.25s ease-in-out, background 0.25s
		ease-in-out;
	-o-transition: color 0.25s ease-in-out, background 0.25s ease-in-out;
	-ms-transition: color 0.25s ease-in-out, background 0.25s ease-in-out;
	transition: color 0.25s ease-in-out, background 0.25s ease-in-out;
}

#nav>ul>li>a>span {
	-moz-transition: color 0.25s ease-in-out;
	-webkit-transition: color 0.25s ease-in-out;
	-o-transition: color 0.25s ease-in-out;
	-ms-transition: color 0.25s ease-in-out;
	transition: color 0.25s ease-in-out;
	font-size: 0.85em;
	letter-spacing: 3px;
}

#nav>ul>li>ul {
	display: none;
}

#nav>ul>li.active>a:before, #nav>ul>li:hover>a:before {
	background: #ED786A;
	color: #fff;
}

#nav>ul>li.active>a>span, #nav>ul>li:hover>a>span {
	color: #ED786A;
}

.dropotron {
	text-align: left;
	border: solid 1px #e5e5e5;
	border-radius: 4px;
	background: #fff;
	background: rgba(255, 255, 255, 0.965);
	box-shadow: 0px 2px 2px 0px rgba(0, 0, 0, 0.1);
	padding: 0.75em 0 0.5em 0;
	min-width: 12em;
	margin-top: calc(-0.5em + 1px);
	margin-left: -2px;
	list-style: none;
}

.dropotron.level-0 {
	margin-top: 1.5em;
	margin-left: -1em;
}

.dropotron.level-0:after {
	content: '';
	display: block;
	position: absolute;
	left: 1.25em;
	top: calc(-0.75em + 1px);
	border-left: solid 0.75em rgba(255, 255, 255, 0);
	border-right: solid 0.75em rgba(255, 255, 255, 0);
	border-bottom: solid 0.75em #fff;
}

.dropotron.level-0:before {
	content: '';
	display: block;
	position: absolute;
	left: 1.25em;
	top: -0.75em;
	border-left: solid 0.75em rgba(255, 255, 255, 0);
	border-right: solid 0.75em rgba(255, 255, 255, 0);
	border-bottom: solid 0.75em #ccc;
}

.dropotron span, .dropotron a {
	display: block;
	padding: 0.3em 1em 0.3em 1em;
	border: 0;
	border-top: solid 1px #f0f0f0;
	outline: 0;
}

.dropotron li {
	padding-left: 0;
	margin: 0;
}

.dropotron li:first-child>span, .dropotron li:first-child>a {
	border-top: 0;
	padding-top: 0;
}

.dropotron li:hover>span, .dropotron li:hover>a {
	-moz-transition: color 0.25s ease-in-out, border-bottom-color 0.25s
		ease-in-out;
	-webkit-transition: color 0.25s ease-in-out, border-bottom-color 0.25s
		ease-in-out;
	-ms-transition: color 0.25s ease-in-out, border-bottom-color 0.25s
		ease-in-out;
	transition: color 0.25s ease-in-out, border-bottom-color 0.25s
		ease-in-out;
	color: #ed786a;
}

/* Features */
#features {
	position: relative;
	overflow: hidden;
	background: #fff;
	text-align: center;
	padding: 6em 0;
}

#features p {
	text-align: center;
}

#features ul.actions {
	margin-top: 1.25em;
}

/* Banner */
#banner {
	position: relative;
	overflow: hidden;
	background: #fff;
	color: #fff;
	text-align: center;
	border-top: solid 2px #e5e5e5;
	border-bottom: solid 2px #e5e5e5;
	box-shadow: inset 0px -8px 0px 0px #fff, inset 0px 8px 0px 0px #fff;
	position: relative;
	text-transform: uppercase;
	background: url("../../images/banner.jpg");
	background-size: cover;
	padding: 10em 0;
}

#banner p {
	font-weight: 400;
	font-size: 2em;
	line-height: 1.5em;
	letter-spacing: 4px;
	text-align: center;
	margin: 0;
}

#banner strong {
	color: inherit;
}

#banner>.container {
	position: relative;
}

#banner>.container:before, #banner>.container:after {
	content: '';
	display: block;
	position: absolute;
	top: 50%;
	width: 35px;
	height: 141px;
	margin-top: -70px;
	background: url("images/bracket.svg");
	opacity: 0.15;
}

#banner>.container:before {
	left: 0;
}

#banner>.container:after {
	-moz-transform: scaleX(-1);
	-webkit-transform: scaleX(-1);
	-ms-transform: scaleX(-1);
	transform: scaleX(-1);
	right: 0;
}

/* Main */
#main {
	position: relative;
	overflow: hidden;
	background: #fff;
	padding: 6em 0;
}

/* Content */
#content>section, #content>article {
	border-top: solid 2px #e5e5e5;
	box-shadow: inset 0px 8px 0px 0px #fff, inset 0px 10px 0px 0px #e5e5e5;
	margin: 5em 0 0 0;
	padding: 5em 0 0 0;
}

#content>section:first-child, #content>article:first-child {
	border-top: 0;
	box-shadow: none;
	margin: 0;
	padding: 0;
}

/* Sidebar */
#sidebar>section, #sidebar>article {
	border-top: solid 2px #e5e5e5;
	box-shadow: inset 0px 8px 0px 0px #fff, inset 0px 10px 0px 0px #e5e5e5;
	margin: 5em 0 0 0;
	padding: 5em 0 0 0;
}

#sidebar>section:first-child, #sidebar>article:first-child {
	border-top: 0;
	box-shadow: none;
	margin: 0;
	padding: 0;
}

/* Footer */
#footer {
	position: relative;
	overflow: hidden;
	border-top: solid 2px #e5e5e5;
	background: #f0f0f0;
	padding: 6em 0 8em 0;
}

#footer form input[type="text"], #footer form input[type="email"],
	#footer form input[type="password"], #footer form select, #footer form textarea
	{
	background: #f7f7f7;
}

#footer form input[type="text"]:focus, #footer form input[type="email"]:focus,
	#footer form input[type="password"]:focus, #footer form select:focus,
	#footer form textarea:focus {
	background: #fff;
}

#footer h2 {
	text-align: center;
}

/* Copyright */
#copyright {
	border-top: solid 2px #e5e5e5;
	text-align: center;
	margin-top: 6em;
	padding-top: 4em;
}

/* XLarge */
@media screen and (max-width: 1680px) {
	/* Basic */
	body, input, textarea, select {
		font-size: 13pt;
	}
}

/* Large */
@media screen and (max-width: 1280px) {
	/* Basic */
	body, input, textarea, select {
		font-size: 12pt;
	}
	h2 br, h3 br, h4 br, h5 br, h6 br {
		display: none;
	}

	/* Image */
	.image.left {
		max-width: 50%;
	}
	.image.right {
		max-width: 50%;
	}

	/* Header */
	#header>.container {
		padding: 12em 0 5em 0;
	}
	#header h1 {
		font-size: 2.5em;
	}

	/* Nav */
	#nav>ul>li {
		padding-right: 1.25em;
	}

	/* Features */
	#features {
		padding: 4em 0;
	}

	/* Banner */
	#banner {
		padding: 8em 0;
	}
	#banner>.container {
		padding: 0 4em;
	}
	#banner>.container br {
		display: none;
	}

	/* Main */
	#main {
		padding: 4em 0;
	}

	/* Footer */
	#footer {
		padding: 4em 0;
	}

	/* Copyright */
	#copyright {
		margin-top: 2em;
		padding-top: 2em;
	}
}

/* Medium */
#navPanel, #titleBar {
	display: none;
}

@media screen and (max-width: 980px) {
	/* Basic */
	html, body {
		overflow-x: hidden;
	}

	/* Header */
	#header>.container {
		padding: 10em 0 7em 0;
	}

	/* Nav */
	#nav {
		display: none;
	}

	/* Nav */
	#page-wrapper {
		-moz-backface-visibility: hidden;
		-webkit-backface-visibility: hidden;
		-ms-backface-visibility: hidden;
		backface-visibility: hidden;
		-moz-transition: -moz-transform 0.5s ease;
		-webkit-transition: -webkit-transform 0.5s ease;
		-ms-transition: -ms-transform 0.5s ease;
		transition: transform 0.5s ease;
		padding-bottom: 1px;
	}
	#titleBar {
		-moz-backface-visibility: hidden;
		-webkit-backface-visibility: hidden;
		-ms-backface-visibility: hidden;
		backface-visibility: hidden;
		-moz-transition: -moz-transform 0.5s ease;
		-webkit-transition: -webkit-transform 0.5s ease;
		-ms-transition: -ms-transform 0.5s ease;
		transition: transform 0.5s ease;
		display: block;
		height: 44px;
		left: 0;
		position: fixed;
		top: 0;
		width: 100%;
		z-index: 10001;
	}
	#titleBar .toggle {
		text-decoration: none;
		position: absolute;
		left: 0;
		top: 0;
		width: 80px;
		height: 60px;
		border: 0;
	}
	#titleBar .toggle:before {
		-moz-osx-font-smoothing: grayscale;
		-webkit-font-smoothing: antialiased;
		display: inline-block;
		font-style: normal;
		font-variant: normal;
		text-rendering: auto;
		line-height: 1;
		text-transform: none !important;
		font-family: 'Font Awesome 5 Free';
		font-weight: 900;
	}
	#titleBar .toggle:before {
		display: inline-block;
		text-decoration: none;
		content: '\f0c9';
		display: block;
		width: 60px;
		height: 40px;
		background: rgba(232, 232, 232, 0.9);
		border-radius: 4px;
		position: absolute;
		left: 5px;
		top: 5px;
		box-shadow: 0.125em 0.125em 0 0 rgba(0, 0, 0, 0.15);
		text-align: center;
		line-height: 40px;
		font-size: 18px;
		color: #aaa;
	}
	#titleBar .toggle:active:before {
		opacity: 0.5;
	}
	#navPanel {
		-moz-backface-visibility: hidden;
		-webkit-backface-visibility: hidden;
		-ms-backface-visibility: hidden;
		backface-visibility: hidden;
		-moz-transform: translateX(-275px);
		-webkit-transform: translateX(-275px);
		-ms-transform: translateX(-275px);
		transform: translateX(-275px);
		-moz-transition: -moz-transform 0.5s ease;
		-webkit-transition: -webkit-transform 0.5s ease;
		-ms-transition: -ms-transform 0.5s ease;
		transition: transform 0.5s ease;
		display: block;
		height: 100%;
		left: 0;
		overflow-y: auto;
		position: fixed;
		top: 0;
		width: 275px;
		z-index: 10002;
		background: #444;
		border-right: solid 2px #3c3c3c;
		font-weight: 400;
		text-transform: uppercase;
		color: #888;
		letter-spacing: 2px;
		font-size: 0.85em;
	}
	#navPanel .link {
		display: block;
		color: #ddd;
		text-decoration: none;
		height: 44px;
		line-height: 44px;
		border: 0;
		border-top: solid 1px #3c3c3c;
		padding: 0 1em 0 1em;
	}
	#navPanel .link:first-child {
		border-top: 0;
	}
	#navPanel .link.depth-0 {
		font-weight: 600;
		color: #fff;
	}
	#navPanel .indent-1 {
		display: inline-block;
		width: 1em;
	}
	#navPanel .indent-2 {
		display: inline-block;
		width: 2em;
	}
	#navPanel .indent-3 {
		display: inline-block;
		width: 3em;
	}
	#navPanel .indent-4 {
		display: inline-block;
		width: 4em;
	}
	#navPanel .indent-5 {
		display: inline-block;
		width: 5em;
	}
	#navPanel .depth-0 {
		color: #fff;
	}
	body.navPanel-visible #page-wrapper {
		-moz-transform: translateX(275px);
		-webkit-transform: translateX(275px);
		-ms-transform: translateX(275px);
		transform: translateX(275px);
	}
	body.navPanel-visible #titleBar {
		-moz-transform: translateX(275px);
		-webkit-transform: translateX(275px);
		-ms-transform: translateX(275px);
		transform: translateX(275px);
	}
	body.navPanel-visible #navPanel {
		-moz-transform: translateX(0);
		-webkit-transform: translateX(0);
		-ms-transform: translateX(0);
		transform: translateX(0);
	}

	/* Sidebar */
	#sidebar {
		padding-top: 6em;
	}
}

/* Small */
@media screen and (max-width: 736px) {
	/* Basic */
	body, input, textarea, select {
		font-size: 11pt;
	}
	h2, h3, h4, h5, h6 {
		font-size: 1.2em;
		letter-spacing: 2px;
		text-align: center;
		margin: 0 0 1em 0;
	}
	h2 br, h3 br, h4 br, h5 br, h6 br {
		display: none;
	}

	/* Image */
	.image.featured {
		margin: 0 0 1.5em 0;
	}
	.image.left {
		max-width: 35%;
	}
	.image.right {
		max-width: 35%;
	}

	/* Button */
	input[type="button"], input[type="submit"], input[type="reset"], button,
		.button {
		letter-spacing: 2px;
		display: block;
		padding: 1em 0 1em 0;
		width: 100%;
	}

	/* Actions */
	ul.actions li {
		display: block;
		margin: 1em 0 0 0;
	}
	ul.actions li:first-child {
		margin-top: 0;
	}

	/* Box */
	.box.excerpt header {
		text-align: center;
	}

	/* Header */
	#header>.container {
		padding: 6em 0 4em 0;
	}
	#header h1 {
		font-size: 2em;
		letter-spacing: 8px;
		line-height: 1.325em;
	}
	#header p {
		margin: 1.25em 0 0 0;
		letter-spacing: 2px;
	}

	/* Banner */
	#banner {
		padding: 5em 0;
	}
	#banner>.container {
		padding: 0;
	}
	#banner>.container:before, #banner>.container:after {
		display: none;
	}
	#banner p {
		font-size: 1.25em;
	}

	/* Features */
	#features {
		padding: 2em 0;
	}
	#features ul.actions {
		margin-top: 0;
	}

	/* Main */
	#main {
		padding: 2em 0;
	}

	/* Content */
	#content>section, #content>article {
		margin: 3em 0 0 0;
		padding: 3em 0 0 0;
	}

	/* Sidebar */
	#sidebar {
		padding-top: 3em;
	}
	#sidebar>section, #sidebar>article {
		margin: 3em 0 0 0;
		padding: 3em 0 0 0;
	}

	/* Footer */
	#footer {
		padding: 2em 0;
	}
	#footer ul.icons {
		margin-bottom: 0;
	}

	/* Copyright */
	#copyright .links {
		margin-bottom: 0;
	}
	#copyright .links li {
		display: block;
		padding-left: 0;
		margin-left: 0;
		border-left: 0;
	}
}
</style>

</head>
<body class="homepage is-preload">
	<div id="page-wrapper">


	
		<!-- Header -->
		<section id="header">
			<div class="container">
				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li><a class="icon solid fa-home" href="${pageContext.request.contextPath}/user/main"><span>Home</span></a></li>
						<li><a class="icon solid fa-cog" href="${pageContext.request.contextPath}/MovieList"><span>Movie</span></a></li>
						<li><a class="icon solid fa-retweet" href="${pageContext.request.contextPath}/user/BorrowList"><span>Borrow information</span></a></li>
						<li><a class="icon solid fa-sitemap" href="${pageContext.request.contextPath}/user/main"><span>XXXX</span></a></li>
					</ul>
				</nav>
				
					<!-- Logo -->
				<h1 id="logo">
					<a href="index.html">Movie System</a>
				</h1>
				<p>A responsive HTML5 site template. Manufactured by HTML5 UP.</p>
				
				
				
				<!-- User Info -->
				<nav id="nav" class="user-info">
					<span>&starf;${loginUserName}&starf;</span>
					<a href="${pageContext.request.contextPath}/logout"><button type="button" class="btn btn-warning">Logout</button></a>
				</nav>	
			</div>
		</section>
	</div>
			
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>