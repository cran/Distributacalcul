% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nbinom.R
\name{NBinom}
\alias{NBinom}
\alias{expValNBinom}
\alias{varNBinom}
\alias{mgfNBinom}
\alias{pgfNBinom}
\title{Negative Binomial Distribution}
\usage{
expValNBinom(
  size,
  prob = (1/(1 + beta)),
  beta = ((1 - prob)/prob),
  nb_tries = FALSE
)

varNBinom(
  size,
  prob = (1/(1 + beta)),
  beta = ((1 - prob)/prob),
  nb_tries = FALSE
)

mgfNBinom(
  t,
  size,
  prob = (1/(1 + beta)),
  beta = ((1 - prob)/prob),
  nb_tries = FALSE
)

pgfNBinom(
  t,
  size,
  prob = (1/(1 + beta)),
  beta = ((1 - prob)/prob),
  nb_tries = FALSE
)
}
\arguments{
\item{size}{Number of successful trials.}

\item{prob}{Probability of success in each trial.}

\item{beta}{Alternative parameterization of the negative binomial
distribution where beta = (1 - p) / p.}

\item{nb_tries}{logical; if \code{FALSE} (default) number of trials
until the \code{r}th success, otherwise, number of failures until
the \code{r}th success.}

\item{t}{t.}
}
\value{
Function :
  \itemize{
    \item \code{\link{expValNBinom}}  gives the expected value.
    \item \code{\link{varNBinom}}  gives the variance.
    \item \code{\link{mgfNBinom}}  gives the moment generating function (MGF).
    \item \code{\link{pgfNBinom}}  gives the probability generating function (PGF).
  }
Invalid parameter values will return an error detailing which parameter is problematic.
}
\description{
Negative binomial distribution with parameters \eqn{r} (number of successful
trials) and \eqn{p} (probability of success).
}
\details{
When \eqn{k} is the number of failures until the \eqn{r}th success,
with a probability \eqn{p} of a success, the negative binomial has density:
  \deqn{\left(\frac{r + k - 1}{k}\right) (p)^{r} (1 - p)^{k}}{Pr(M = k) = choose(r + k - 1, k) p^r (1 - p)^k}
for \eqn{k \in \{0, 1, \dots \}}{k = 0, 1, 2, ...}

When \eqn{k} is the number of trials until the \eqn{r}th success,
with a probability \eqn{p} of a success, the negative binomial has density:
  \deqn{\left(\frac{k - 1}{r - 1}\right) (p)^{r} (1 - p)^{k - r}}{Pr(M = k) = choose(k - 1, r - 1) p^r (1 - p)^(k - r)}
for \eqn{k \in \{r, r + 1, r + 2, \dots \}}{k = r, r + 1, r + 2, ...}

The alternative parameterization of the negative binomial with parameter
\eqn{\beta}{beta}, and \eqn{k} being the number of trials, has density:
  \deqn{\frac{\Gamma(r + k)}{\Gamma(r) k!} \left(\frac{1}{1 + \beta}\right)^{r}%
  \left(\frac{\beta}{1 +  \beta}\right)^{k - r}}{Pr(M = k) = %
  (r + k - 1)!/((r - 1)! k!) (1/(1 + beta))^r (beta/(1 + beta))^(k - r)}
for \eqn{k \in \{0, 1, \dots \}}{k = 0, 1, 2, ...}
}
\examples{
# Where k is the number of trials for a rth success
expValNBinom(size = 2, prob = .4)

# Where k is the number of failures before a rth success
expValNBinom(size = 2, prob = .4, nb_tries = TRUE)

# With alternative parameterization where k is the number of trials
expValNBinom(size = 2, beta = 1.5)


# Where k is the number of trials for a rth success
varNBinom(size = 2, prob = .4)

# Where k is the number of failures before a rth success
varNBinom(size = 2, prob = .4, nb_tries = TRUE)

# With alternative parameterization where k is the number of trials
varNBinom(size = 2, beta = 1.5)

mgfNBinom(t = 1, size = 4, prob = 0.5)

pgfNBinom(t = 5, size = 3, prob = 0.3)

}
