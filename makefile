OUTDIR=./out
BUILD_OPTIONS=-output-directory=$(OUTDIR)

INCLUDE_FRONT=true
INCLUDE_BACK=true
INCLUDE_FULLSTACK=true

TASKS=

ifeq ($(INCLUDE_FRONT), true)
	TASKS+= frontend
endif

ifeq ($(INCLUDE_BACK), true)
	TASKS+= backend
endif

ifeq ($(INCLUDE_FULLSTACK), true)
	TASKS+= fullstack
endif

all: $(TASKS) clean_aux

fullstack:
	pdflatex $(BUILD_OPTIONS) ./fullstack_Mohammed_Abdulsalam.tex

frontend:
	pdflatex $(BUILD_OPTIONS) ./front-end_Mohammed_Abdulsalam.tex

backend:
	pdflatex $(BUILD_OPTIONS) ./back-end_Mohammed_Abdulsalam.tex

clean_aux:
	find $(OUTDIR) -type f  ! -name "*.pdf"  -delete

