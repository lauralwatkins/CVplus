all: cvrefspubs_letter cvrefspubs_a4 cvpubs_letter cvpubs_a4 cvrefs_letter cvrefs_a4 cv_letter cv_a4 pubs_letter pubs_a4 refs_letter refs_a4

a4: cvrefspubs_a4 cvpubs_a4 cvrefs_a4 cv_a4 pubs_a4 refs_a4
letter: cvrefspubs_letter cvpubs_letter cvrefs_letter cv_letter pubs_letter refs_letter

cv: cv_letter cv_a4 cvrefs_letter cvrefs_a4 cvpubs_letter cvpubs_a4 cvrefspubs_letter cvrefspubs_a4
pubs: pubs_letter pubs_a4 cvpubs_letter cvpubs_a4 cvrefspubs_letter cvrefspubs_a4
refs: refs_letter refs_a4 cvrefspubs_letter cvrefspubs_a4


clean:
	rm -f *~ *.aux *.dvi *.log *.blg *.bbl *.out


#  CV, References and Publications

cvrefspubs_letter:
	pdflatex template_cvrefspubs_letter
	mv template_cvrefspubs_letter.pdf Letter/CVRefsPubs.pdf
	make clean

cvrefspubs_a4:
	pdflatex template_cvrefspubs_a4
	mv template_cvrefspubs_a4.pdf A4/CVRefsPubs.pdf
	make clean



#  CV and Publications (no References!)

cvpubs_letter:
	pdflatex template_cvpubs_letter
	mv template_cvpubs_letter.pdf Letter/CVPubs.pdf
	make clean

cvpubs_a4:
	pdflatex template_cvpubs_a4
	mv template_cvpubs_a4.pdf A4/CVPubs.pdf
	make clean


# CV with References

cvrefs_letter:
	pdflatex template_cvrefs_letter
	mv template_cvrefs_letter.pdf Letter/CVRefs.pdf
	make clean

cvrefs_a4:
	pdflatex template_cvrefs_a4
	mv template_cvrefs_a4.pdf A4/CVRefs.pdf
	make clean


# CV only

cv_letter:
	pdflatex template_cv_letter
	mv template_cv_letter.pdf Letter/CV.pdf
	make clean

cv_a4:
	pdflatex template_cv_a4
	mv template_cv_a4.pdf A4/CV.pdf
	make clean


# Publications only

pubs_letter:
	pdflatex template_pubs_letter
	mv template_pubs_letter.pdf Letter/Publications.pdf
	make clean

pubs_a4:
	pdflatex template_pubs_a4
	mv template_pubs_a4.pdf A4/Publications.pdf
	make clean


# References only

refs_letter:
	pdflatex template_refs_letter
	mv template_refs_letter.pdf Letter/References.pdf
	make clean

refs_a4:
	pdflatex template_refs_a4
	mv template_refs_a4.pdf A4/References.pdf
	make clean
