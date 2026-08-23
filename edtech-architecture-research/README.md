# EdTech Architecture Research: Why LMS Platforms Fail Students, and a Proposal for Something Better

Research conducted August 2026. Compiled from parallel research passes on Canvas, Blackboard,
elite-school/alternative stacks, and student sentiment. Sources are inline; items flagged
"unverified" in the source research are marked as such here too.

## TL;DR

- Canvas and Blackboard are architecturally very different (Rails/Postgres/multi-tenant SaaS vs.
  legacy Java/Tomcat with a bruising two-decade migration to a new course-view model), but they
  fail students in the **same place**: neither enforces any structure on how an individual
  instructor organizes a course. The result is that a student with 5-7 classes has to learn 5-7
  different mental models of "where things are" every single semester.
- This isn't a UI polish problem. It's a **data-model/governance problem**: due dates, materials,
  and grading weights live inside instructor-authored freeform content instead of a queryable,
  structured layer the platform (or a student's own tool) can aggregate reliably.
- Elite, well-funded schools have **not** solved this by building something better — almost all of
  them (MIT, Stanford, Harvard, Princeton, Berkeley, Yale, Caltech) run Canvas too, with thin
  custom integration layers (registrar sync, import tools) rather than a fundamentally different
  core. The one clear in-house build (CMU's Autolab) is scoped narrowly to auto-graded
  programming assignments, not general course delivery.
- Students already vote with their behavior: a 1.5M-user browser extension (Better Canvas), grade
  calculators, AI syllabus-parsing apps, Notion templates, and per-class Discords all exist purely
  to patch over what the LMS doesn't do — build a single, consistent, cross-course view.
- Canvas just had a very bad year: a confirmed breach and reported 2nd compromise by the same
  group in 2026, ransom paid, exam disruption worldwide. So the "just as bad as Blackboard" instinct
  is fair, though the specific failure modes differ (Blackboard = architecture debt, dated UX,
  the company itself going bankrupt; Canvas = better UX but now a live trust/security problem).

---

## 1. Canvas (Instructure)

**Stack**: Ruby on Rails 8 + React frontend, PostgreSQL as primary datastore (JSONB, trigram
indexes), Redis for cache/session/job-queue, Puma web server, `inst-jobs` for async work,
`Switchman` gem for multi-shard/multi-tenant routing. Cassandra was used historically for the
page-view/analytics subsystem specifically, not core data (current status unconfirmed). REST API
(190+ resource groups) plus a newer, narrower GraphQL API. LTI 1.3 / LTI Advantage for third-party
tool integration (Deep Linking, grade passback via Assignment & Grade Services).
[System architecture](https://deepwiki.com/instructure/canvas-lms/1.1-system-architecture) ·
[Backend infra](https://deepwiki.com/instructure/canvas-lms/2-backend-infrastructure) ·
[REST API](https://www.canvas.instructure.com/doc/api/) ·
[GraphQL schema](https://github.com/instructure/canvas-lms/blob/master/schema.graphql)

**Data model**: Identity/access (accounts, roles, enrollments) → course structure (terms, courses,
sections) → content (folders, pages, `modules`/`module_items` as polymorphic pointers) →
assessment (`AbstractAssignment`, submissions, quizzes, rubrics). Modules are the primary
organizational unit and are **entirely instructor-discretionary** — no enforced schema for how a
course is laid out. [DeepWiki: Assessment & Grading](https://deepwiki.com/instructure/canvas-lms/4-assessment-and-grading)

**Student-facing aggregation and its limits**: A global Dashboard (course-card grid), an
auto-compiled To-Do list, and a Calendar meant to unify due dates across every enrolled course —
but the Calendar **only auto-displays the first 10 course calendars by default**, a documented gap
for students in more than 10 sections. [Pitt Calendar guide](https://teaching.pitt.edu/resources/how-to-use-the-canvas-calendar-to-view-and-manage-important-dates/)

**The core complaint, direct quote** (Cubite review, 53 verified users, 2026):

> "Canvas' course templates, if left as is, create mind-bending scavenger hunts for students,
> dispersing important information into unpredictable nooks and crannies of each site. Finding the
> link to a professor's office hours generally requires tactics similar to those used by forest
> rangers searching for lost hikers."
> — [Cubite: Canvas LMS Review 2026](https://cubite.io/blogs/canvas-lms-review)

Satisfaction is **bimodal** on TrustRadius (32% rate it 0-39/100, another 32% rate it 80-100) —
consistent with an experience that depends entirely on which instructor you happen to draw, not
the platform itself. [TrustRadius](https://www.trustradius.com/products/canvas/reviews)

Other recurring complaints: notification overload from default settings, a mobile app rated
consistently weaker than the web experience ("slow and buggy," no dark mode), slow file uploads,
and documented accessibility gaps in New Quizzes (missing alt text, poor heading structure).

**2026 security incident** (the big one): On April 25, 2026, the extortion group **ShinyHunters**
breached Canvas production systems; Instructure detected it 4 days later. Despite declaring it
resolved May 6, the group struck again May 7, defacing the Canvas login page with a ransom demand
— reportedly the **second compromise of Instructure by the same group within eight months**.
Claimed (unconfirmed by Instructure): 3.65 TB exfiltrated, ~275 million user records across ~8,809
institutions worldwide (names, emails, student IDs, inter-user messages — no passwords or
financial data reported). Instructure paid a ransom on May 11 to preempt a threatened leak. The
incident disrupted final exams globally during peak end-of-term season.
[Cybersecurity Dive](https://www.cybersecuritydive.com/news/a-2nd-canvas-data-breach-causes-major-disruptions-for-schools-colleges/819784/) ·
[Reed Smith legal analysis](https://www.reedsmith.com/articles/canvasinstructure-cyberattack-key-developments-and-action-items-for-higher-education-institutions/) ·
[Harvard Crimson](https://www.thecrimson.com/article/2026/5/8/canvas-breach-down/)

Fallout split reactions in higher-ed press: Inside Higher Ed argued
["No, Colleges Can't Just Quit Canvas"](https://www.insidehighered.com/news/tech-innovation/teaching-learning/2026/05/18/no-colleges-cant-just-quit-canvas)
(switching cost is too high even for well-resourced schools), while The Chronicle ran
["Kill Canvas. Now."](https://www.chronicle.com/article/kill-canvas-now) and Community College Daily
asked ["After Canvas: The architectural question higher ed has been avoiding"](https://www.ccdaily.com/2026/05/after-canvas-the-architectural-question-higher-ed-has-been-avoiding/)
— i.e., exactly the question this document is trying to answer.

A separate March 2025 class action alleged excessive student-data harvesting; dismissed by a
federal court in August 2025 for lack of specificity. Migration momentum is still mostly **toward**
Canvas (Pepperdine, UMass Lowell, UT Dallas, UMass Amherst, Montana Tech/university system, MSU
Billings all moved to Canvas 2024-2026) despite all of the above — underscoring how weak the
alternatives currently are.

---

## 2. Blackboard (Anthology)

**Stack**: Java web app on Apache Tomcat, packaged as `.war` files, Oracle or SQL Server backend
(Oracle RAC / SQL Server clustering for HA). Two generations of extensibility: legacy **Building
Blocks** (in-process Java, tightly coupled to Learn internals, don't work in the Ultra UI, and
Anthology now discourages new development on them) and standards-based **LTI + REST/OAuth2**,
which is what actually spans deployment models.
[Tomcat architecture](https://help.blackboard.com/Learn/Administrator/Hosting/Architecture/About_Apache_Tomcat) ·
[REST API framework](https://docs.blackboard.com/rest-apis/learn/getting-started/framework)

**The defining architectural fact**: Blackboard still supports three parallel deployment models —
self-hosted, managed-hosted, and multi-tenant SaaS — years after announcing a full SaaS/AWS push
in 2014. A widely cited (though not independently re-verified here — source domain blocked)
retrospective by an ex-Blackboard infrastructure engineer argues this is what structurally crippled
the company: different code paths, support structures, and security configs maintained
simultaneously for years. [Andy Potanin: "What Killed Blackboard"](https://andypotanin.com/what-killed-blackboard/)

**Ultra vs. Original is an architecture split, not a skin**: Original Course View uses an
instructor-customized left menu + a separate faculty Control Panel (maximum flexibility, maximum
inconsistency). Ultra consolidates into one "Course Content" stream, hard-caps content nesting at
2 folder levels, and doesn't support all Original test-question types on import. **Original retires
December 31, 2026** — every institution is being forced onto Ultra by 2027.
[Ultra vs Original comparison](https://sites.reading.ac.uk/tel/ultra-vs-original/) ·
[UMBC retirement announcement](https://doit.umbc.edu/news/post/150637/)

Ultra's **Activity Stream** (grouped Important/Today/Recent, aggregating due dates/grades/
announcements across all enrolled courses) is a real improvement over Original — but reviewers
still flag inconsistent per-course organization underneath it, plus dashboard clutter from courses
long since completed.
[Blackboard Help: Activity Stream](https://help.blackboard.com/Learn/Student/Ultra/Stay_in_the_Loop/Activity_Stream)

**Complaints**: "clunky and a little old school," cumbersome navigation, important items "hidden
by the volume of options," a mobile app rated ~3.3-3.6/5 with forced re-logins and crashes. Usability
studies using the System Usability Scale rate Canvas above Blackboard; total cost of ownership
(licensing + hosting + dedicated admin staff) is repeatedly cited as a Blackboard-specific weakness
driving departures. [ACM usability study](https://dl.acm.org/doi/fullHtml/10.1145/3523132.3523137)

**Market collapse**: Reportedly from ~70% of the US/Canada higher-ed LMS market to ~12% by
enrollment over roughly two decades; Canvas passed it around 2018-2019 and by Fall 2024 holds
~50% enrollment-weighted share vs. Brightspace ~20%, Blackboard ~12% (secondhand via search
summary, source domain blocked — flagged as such in the original research).

**2025 bankruptcy**: Anthology (Blackboard's parent since a 2021 merger) filed **Chapter 11 on
September 29, 2025**, citing over $1B in debt traced to the merger and rising interest rates
(revenue reportedly down ~$80M over two years to ~$450M by FY2025). Restructuring plan: sell
non-core business units to leave a leaner, debt-free company centered on the core Blackboard
platform. [MarketBrief/EdWeek](https://marketbrief.edweek.org/financing-investment/blackboards-parent-company-anthology-files-for-bankruptcy/2025/10)

No confirmed Blackboard-specific security breach found for 2024-2026.

---

## 3. What Well-Funded Schools Actually Use

The honest answer: **almost all of them use Canvas too.**

| School | History | Current approach |
|---|---|---|
| MIT | Homegrown "Stellar"/LMOD since 2001 | Adopted Canvas only in June 2020 (COVID-driven), *additive* to Stellar, not a replacement |
| Stanford | Custom "CourseWork" system | Migrated to Canvas 2015; maintains own dev team + custom add-ons; runs a ~19-school Canvas peer consortium |
| Harvard | — | Canvas across all schools, integrated with my.harvard (PeopleSoft) registrar; HMS layers "DesignPLUS" on top |
| Princeton | Blackboard 1999-2019 | Evaluated in 2018-19, found every Ivy peer already on Canvas, migrated 2020-21 |
| UC Berkeley | — | Canvas rebranded "bCourses," with custom-built registrar/roster/mailing-list integrations |
| CMU | — | Runs Canvas *and* Blackboard concurrently; also built and open-sourced **Autolab**, an in-house auto-grading/course system for CS, in production since 2010 |
| Caltech | Moodle | Moved to Canvas August 2020 |
| Yale | — | Canvas, 35+ integrated tools, school-specific nav templates |

Sources: [MIT/The Tech](https://thetech.com/2020/06/24/canvas-transition) ·
[Stanford](https://news.stanford.edu/2015/12/08/canvas-replaces-coursework-12-08-15) ·
[Harvard HUIT](https://www.huit.harvard.edu/canvas) ·
[Princeton](https://canvas.princeton.edu/about/lms-evaluation-project) ·
[Berkeley](https://rtl.berkeley.edu/services-programs/bcourses/bcourses-roadmap) ·
[CMU Autolab](https://github.com/autolab/Autolab) · [Caltech](https://canvas.caltech.edu/)

**The pattern is consistent**: no elite school runs a fully custom LMS core for general
instruction anymore — the cost of maintaining grading, gradebooks, FERPA compliance, and
accessibility in-house is prohibitive at that scope. What they build instead is a **thin custom
layer**: SIS/registrar sync, import/authoring tools, or narrow high-leverage specialty tools
(CMU's Autolab, and separately **Gradescope** — which began as a Stanford project and is now used
far beyond Stanford). Build-vs-buy literature backs this up: custom LMS TCO usually exceeds
commercial platforms over 5 years except at very large scale or where workflow/compliance control
is a hard requirement. [eLearning Industry](https://elearningindustry.com/build-vs-buy-in-lms-development-when-a-custom-lms-actually-pays-off)

**Other platform architectures worth noting**:
- **Moodle**: fully open-source PHP/MySQL, small core + strictly-typed plugin API per category —
  scales via community contribution, not core-team effort. [AOSA architecture chapter](https://aosabook.org/en/v2/moodle.html)
- **Open edX**: the most architecturally modern of the majors — true microservices/"Independently
  Deployed Applications," Celery/Redis async, Elasticsearch search, newer features shipped as
  micro-frontends. [Open edX architecture docs](https://docs.openedx.org/en/latest/developers/references/developer_guide/architecture.html)
- **Google Classroom**: deliberately minimal, a thin coordination layer over Workspace (Docs,
  Drive, Meet) — trades LMS depth for near-zero learning curve.
- **D2L Brightspace**: markets native multi-tenant microservices, differentiates on adaptive
  learning and built-in predictive analytics.

**Unified cross-course dashboards, prior art**: Canvas's own "Centralized Coursework Widget"
unifies assignments *within* Canvas only. Third-party tools fill the rest of the gap: **myHomework
Student Planner** (since 2009), **Better Canvas** browser extension (**1.5M+ users** — strong direct
evidence of unmet need), **CourseLink** (AI-parses syllabus PDFs to auto-extract deadlines),
**DormWay**. No dominant standard exists, and — notably — **no peer-reviewed HCI paper specifically
studying cross-course organizational-inconsistency was found**; this appears to be a real,
underexplored problem rather than a solved one. [Better Canvas](https://www.better-lms.com/)

---

## 4. Student Sentiment

Direct-quote access to Reddit was blocked in this research pass (both agents independently hit
this limit), so the strongest verified evidence comes from college newspapers and institutional
surveys rather than raw social media — but it converges on the same finding.

- **Columbia Chronicle**: students report faculty Canvas use is "creating confusion and harming
  their ability to track their academic progress" — *"one of my professors uses it a lot, and
  another one pretty much just uses it for grades."* [Source](https://columbiachronicle.com/campus/students-frustrated-by-inconsistence-canvas-use-by-instructors/)
- Op-eds with self-explanatory headlines: ["Blackboard Sucks and Is Confusing"](https://www.thetriangle.org/article/blackboard-sucks-and-is-confusing) (Drexel),
  ["Dear WSU, can we please stop using Blackboard?"](https://thesunflower.com/55728/opinion/opinion-dear-wsu-can-we-please-stop-using-blackboard/) (Wichita State),
  ["Students dissatisfied with Blackboard platform, prefer Canvas"](https://thepolypost.com/news/2020/10/26/students-dissatisfied-with-blackboard-platform-prefer-canvas/) (Cal Poly Pomona).
- **Institutional surveys confirm it's structural, not anecdotal**: Cornell found ~75% of students
  rate in-course organization as important, most often citing the Modules page
  ([source](https://blogs.cornell.edu/teaching/?p=1501)). Newcastle University's Computing Science
  department found students missed materials because folders were inconsistently named across
  courses ("Seminar Documents" vs. "Seminar Materials") and had to build a **shared department-wide
  template** to fix it ([source](https://teaching.ncl.ac.uk/casestudies/storedcasestudies/blackboardmoduledesignincomputingscience.html)).
  Oxford Brookes found only 67.6% of students rated Moodle course structure "consistent" —
  meaning roughly a third did not ([source](https://www.brookes.ac.uk/students/news/2024/03/your-feedback-on-the-new-moodle)).
- **The clearest academic framing** (Faculty Focus): *"One instructor might include clear
  instructions and due dates in the LMS while another might not… this lack of consistency can
  create confusion and unnecessary cognitive load for students who are taking multiple classes in
  a term with very different-looking course shells."* [Source](https://www.facultyfocus.com/articles/teaching-with-technology-articles/using-the-lms-effectively-to-reduce-logistical-challenges-for-students/)
- **International**: US skews Canvas; UK/EU skews Moodle (more customizable, "can be overwhelming
  for new users"); Australia is mid-transition from Moodle to Canvas (ACU, ANU, ~2024-2025); Hong
  Kong (CityU, PolyU) has adopted Canvas with generally positive vendor-published case studies
  (likely rosier than organic sentiment). No organic non-US social commentary specifically on
  cross-course inconsistency was found — flagged as a real evidence gap, though UK institutional
  surveys (above) suggest the same underlying problem exists there too.
- **Existing workarounds are the strongest signal of unmet need**: Better Canvas (1.5M+ users),
  numerous Chrome grade-calculator extensions, Canvas's own read-only (and laggy, up-to-24h-delayed)
  ICS calendar feed piped into Google Calendar, a large market of Notion "assignment tracker"
  templates, and per-class Discord servers (some 2,000+ members) that students build themselves
  because no official tool aggregates cleanly across courses.

---

## 5. Proposed Architecture: Separate the Structure Layer from the Content Layer

The failure mode is consistent across every platform studied: **the platform conflates two things
that should be architecturally separate — how an instructor presents material, and the structured
metadata a student needs to plan around.** Modules, folders, and page layout are freeform by
design (correctly — pedagogy should not be dictated by software). But due dates, assignment
weights, and "what's due when" get buried *inside* that freeform layer instead of living in a
structured schema that can be queried independently of how any given instructor organizes things.
Canvas's Calendar and To-Do partially solve this — that's why Canvas is rated better than
Blackboard — but they cap out (10-course calendar limit) and depend on instructors having entered
due dates as actual Assignment objects rather than, say, a PDF syllabus or an announcement.

**Core proposal**: a two-layer model.

1. **Presentation layer (unchanged, instructor-owned)**: Modules, pages, files, whatever
   organizational scheme a professor prefers. Keep this maximally flexible — that flexibility
   isn't the bug.
2. **Structured planning layer (student-owned, platform-enforced)**: A minimal, mandatory schema
   every course must populate, independent of presentation: `{item, type, due_at, weight,
   course_id, materials_link}`. This is *not* a new idea from scratch — it's what Canvas's
   Assignment API and LTI's Assignment & Grade Services already model — the fix is **making it
   mandatory and complete**, rather than optional and instructor-discretionary, and exposing it
   through an aggregation view that scales past 10 courses and works the same way for every
   student regardless of which of their professors is organized and which isn't.

**Practical building blocks, in order of leverage-to-effort**:

- **AI syllabus/structure normalization** (already prototyped by third-party apps like CourseLink):
  parse whatever an instructor actually posts — freeform announcement, PDF syllabus, a Modules
  page — into the structured schema automatically, so the mandatory layer doesn't require
  instructors to change their habits. This is the highest-leverage near-term fix, since it doesn't
  require institutional policy change.
- **A student-side aggregation layer that's platform-agnostic**, not just cross-course-within-one-
  LMS: since real students (and this household) end up spanning Canvas, Blackboard, Moodle, and
  ad hoc professor sites across a K-12-through-college career, the aggregator should consume
  standard LTI/REST feeds from *whatever* LMS is behind it, the way Better Canvas and myHomework
  already do at smaller scale, rather than being another single-platform native feature.
- **Department- or institution-level structural templates** as a low-tech, high-impact fallback
  where AI normalization is impractical — Newcastle's Computing Science department already proved
  this works: a shared template solved the "everyone names their folder differently" problem
  without touching the platform at all.
- **Decentralize the security blast radius.** The 2026 Canvas breach is itself an architecture
  lesson: a single multi-tenant store holding ~275M records across ~8,809 institutions is a single
  point of catastrophic failure. A structured-planning-layer service that's federated per
  institution (or per student, client-side) rather than centralized in one vendor's multi-tenant
  cloud is both a better privacy posture and, incidentally, exactly what a "unified cross-platform
  student view" needs architecturally anyway — it has to talk to many backends, so it shouldn't
  *be* one more giant backend itself.

**What this buys, concretely, for a student carrying 7 classes**: one place to see everything due
this week, correct and complete, regardless of whether Professor A lives in Modules, Professor B
only posts Announcements, and Professor C hands out a PDF syllabus and never touches the LMS
again — without waiting for any of those professors, or the institution, to change how they teach.

---

## Confidence Notes

Strongest evidence: Canvas/Blackboard technical architecture (official docs, DeepWiki, GitHub),
the 2026 Canvas breach timeline (multiple independent journalism sources), Anthology's bankruptcy
filing, elite-school LMS choices (each institution's own IT documentation), Better Canvas's user
count, and the institutional-survey evidence on inconsistent course organization (Cornell,
Newcastle, Oxford Brookes).

Weaker/flagged in original research: precise LMS market-share percentages (secondhand via search
summary, source domains blocked to direct fetch), the "What Killed Blackboard" migration-count
figures (same reason), Cassandra's current status inside Canvas, any specific Canvas price-increase
controversy, organic (non-institutional, non-US) student commentary on cross-course inconsistency,
and any peer-reviewed HCI paper specifically on this problem (none found — appears to be a real gap
in the literature, not just a research-tool limitation).
