context("authors clean")

test_that("Output of clean_authors makes sense", {
  
df<-data.frame(filename=NA, AB=NA , AF=c('Smith, Jon J.','Thompson, Bob B.',
    'Smith,J'), AU=c('Smith, Jon J.','Thompson, Bob','Smith, J'), BP=NA ,
C1=c("Univ Florida, Gainesville, FL USA","University of Texas, Austin, TX, USA",
    NA),CR=NA,DE=NA, DI=NA, EM=c("j.smith@ufl.edu",NA,'jsmith@usgs.gov'),
EN=NA, FN=NA, FU=NA, PD=NA, PG=NA, PT=NA, PU=NA, PY=NA,
RI=c("Smith,Jon/H-9999-2012","Thompson,Bob/H-2222-2012",
     "Smith,Jon/H-2769-2012"), OI=NA,PM=NA, 
RP=c("Univ Florida, Gainesville, FL USA","University of Texas, Austin, TX, USA",
     NA), SC=NA, SN=NA, SO=NA, TC=NA, TI=NA, UT=NA, VL=NA, WC=NA,Z9=NA,
refID=c(1,2,3) ,stringsAsFactors=F)

df[]<-lapply(df, as.character)

actual <- authors_clean(references=df)
expect_is(actual, 'list')
expect_is(actual$prelim, 'data.frame')
expect_is(actual$review, 'data.frame')
expect_gt(nrow(actual$review),0)
expect_gt(nrow(actual$prelim),0)
expect_equal(actual$prelim$groupID,c(3,2,3))
expect_gt(min(actual$prelim$similarity,na.rm=T),0.88)

df<-data.frame(filename=NA, AB=NA , AF=c('Smith, Jon J.','Thompson, Bob B.',
  'Smith,J'), AU=c(NA,'Thompson, Bob','Smith, J'), BP=NA ,
  C1=c("Univ Florida, Gainesville, FL USA","University of Texas, Austin, TX, USA",
    NA),CR=NA,DE=NA, DI=NA, EM=c("j.smith@ufl.edu",NA,'jsmith@usgs.gov'),
  EN=NA, FN=NA, FU=NA, PD=NA, PG=NA, PT=NA, PU=NA, PY=NA,
  RI=c("Smith,Jon/H-9999-2012","Thompson,Bob/H-2222-2012",
    "Smith,Jon/H-2769-2012"), OI=NA,PM=NA,
  RP=c("Univ Florida, Gainesville, FL USA","University of Texas, Austin, TX, USA",
    NA), SC=NA, SN=NA, SO=NA, TC=NA, TI=NA, UT=NA, VL=NA, WC=NA,Z9=NA,
  refID=c(1,2,3) ,stringsAsFactors=F)
df[]<-lapply(df, as.character)
expect_error(authors_clean(references = df))
})


