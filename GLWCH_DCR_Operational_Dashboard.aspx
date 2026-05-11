<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>GLWCH Deputy Commander for Readiness Operational Dashboard - GLWCH Deputy Commander for Readiness Operational Dashboard | Army Style</title>
  <style>
    :root {
      --army-black: #1b1b1b;
      --army-green: #4b5320;
      --army-dark-green: #2f3a1e;
      --army-gold: #ffcc00;
      --field-tan: #d6c7a1;
      --sand: #f4f1e8;
      --paper: #ffffff;
      --ink: #222222;
      --muted: #5f5f5f;
      --border: #c7c1ad;
      --success: #2f6b35;
      --warning: #b07d00;
      --danger: #9b1c1c;
      --info: #315f7d;
    }

    * { box-sizing: border-box; }

    body {
      margin: 0;
      font-family: Arial, Helvetica, sans-serif;
      background: var(--sand);
      color: var(--ink);
      line-height: 1.45;
    }

    .top-band {
      background: var(--army-black);
      color: #fff;
      padding: 8px 40px;
      font-size: 0.78rem;
      letter-spacing: 0.08em;
      text-transform: uppercase;
      border-bottom: 4px solid var(--army-gold);
    }

    header {
      background:
        linear-gradient(rgba(47,58,30,.92), rgba(47,58,30,.92)),
        repeating-linear-gradient(45deg, #39451f 0, #39451f 8px, #303a1d 8px, #303a1d 16px);
      color: #fff;
      padding: 34px 40px 28px;
      border-bottom: 1px solid #1f2715;
    }

    .brand-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 24px;
      max-width: 1500px;
      margin: 0 auto;
    }

    .brand-left {
      display: flex;
      align-items: center;
      gap: 18px;
    }

    .army-mark {
      width: 74px;
      height: 74px;
      background: var(--army-black);
      border: 3px solid var(--army-gold);
      display: grid;
      place-items: center;
      font-weight: 900;
      font-size: 1.45rem;
      letter-spacing: .04em;
      flex: 0 0 auto;
    }

    .eyebrow {
      color: var(--army-gold);
      font-weight: 800;
      letter-spacing: .11em;
      text-transform: uppercase;
      font-size: .84rem;
      margin-bottom: 6px;
    }

    h1 {
      margin: 0;
      font-size: 2rem;
      line-height: 1.12;
      text-transform: uppercase;
      letter-spacing: -.01em;
    }

    header p {
      margin: 8px 0 0;
      color: #f3ead1;
      max-width: 950px;
      font-size: 1rem;
    }

    .classification-box {
      border: 2px solid var(--army-gold);
      padding: 10px 14px;
      text-align: center;
      font-weight: 800;
      color: var(--army-gold);
      background: rgba(0,0,0,.22);
      min-width: 150px;
    }

    nav {
      background: var(--army-black);
      color: #fff;
      border-bottom: 1px solid #000;
    }

    nav .nav-inner {
      max-width: 1500px;
      margin: 0 auto;
      padding: 0 40px;
      display: flex;
      flex-wrap: wrap;
      gap: 0;
    }

    nav a {
      color: #fff;
      text-decoration: none;
      padding: 14px 18px;
      font-weight: 800;
      font-size: .86rem;
      text-transform: uppercase;
      border-left: 1px solid #363636;
    }

    nav a:last-child { border-right: 1px solid #363636; }
    nav a:hover { background: var(--army-green); color: var(--army-gold); }

    main {
      max-width: 1500px;
      margin: 0 auto;
      padding: 28px 40px 48px;
    }

    .notice {
      background: #fff7d7;
      border-left: 8px solid var(--army-gold);
      padding: 14px 18px;
      margin-bottom: 22px;
      font-weight: 700;
    }

    .top-grid {
      display: grid;
      grid-template-columns: 1.3fr .7fr;
      gap: 20px;
      margin-bottom: 22px;
    }

    .panel, .metric, .service-card, table {
      background: var(--paper);
      border: 1px solid var(--border);
      box-shadow: 0 2px 0 rgba(0,0,0,.16);
    }

    .panel { padding: 20px; }

    .panel h2, .panel h3 {
      margin-top: 0;
      color: var(--army-dark-green);
      text-transform: uppercase;
      letter-spacing: .02em;
    }

    .panel h2::after, .section-title::after {
      content: "";
      display: block;
      height: 4px;
      width: 90px;
      background: var(--army-gold);
      margin-top: 8px;
    }

    .focus-list { margin: 0; padding-left: 22px; }
    .focus-list li { margin-bottom: 8px; }

    .metric-grid {
      display: grid;
      grid-template-columns: repeat(4, minmax(180px, 1fr));
      gap: 14px;
      margin: 18px 0 28px;
    }

    .metric {
      min-height: 120px;
      padding: 16px;
      border-top: 6px solid var(--army-green);
    }

    .metric .label {
      color: var(--muted);
      font-size: .78rem;
      text-transform: uppercase;
      letter-spacing: .06em;
      font-weight: 900;
    }

    .metric .value {
      color: var(--army-black);
      font-size: 2.05rem;
      font-weight: 900;
      margin-top: 8px;
      line-height: 1;
    }

    .metric .note {
      color: var(--muted);
      font-size: .9rem;
      margin-top: 8px;
    }

    .section-title {
      margin: 34px 0 14px;
      color: var(--army-black);
      text-transform: uppercase;
      font-size: 1.35rem;
      letter-spacing: .03em;
    }

    .dashboard-grid {
      display: grid;
      grid-template-columns: repeat(3, minmax(260px, 1fr));
      gap: 18px;
    }

    .service-card {
      padding: 0;
      overflow: hidden;
    }

    .service-header {
      background: var(--army-dark-green);
      color: #fff;
      display: flex;
      justify-content: space-between;
      align-items: center;
      gap: 12px;
      padding: 13px 14px;
      border-bottom: 4px solid var(--army-gold);
    }

    .service-header h3 {
      margin: 0;
      font-size: 1rem;
      text-transform: uppercase;
      letter-spacing: .02em;
    }

    .service-body { padding: 16px; }
    .service-body p { margin: 0 0 10px; }
    .service-body ul { margin: 10px 0 0; padding-left: 18px; }
    .service-body li { margin-bottom: 6px; }

    .status {
      white-space: nowrap;
      padding: 4px 9px;
      font-size: .74rem;
      font-weight: 900;
      border: 1px solid rgba(0,0,0,.25);
      text-transform: uppercase;
      background: #eee;
      color: #111;
    }

    .green { background: #dff0df; color: var(--success); }
    .yellow { background: #fff0c2; color: #6f4e00; }
    .red { background: #f4d4d4; color: var(--danger); }
    .blue { background: #d9e8f0; color: var(--info); }

    table {
      width: 100%;
      border-collapse: collapse;
      overflow: hidden;
    }

    th, td {
      text-align: left;
      border-bottom: 1px solid var(--border);
      padding: 12px 14px;
      vertical-align: top;
      font-size: .92rem;
    }

    th {
      background: var(--army-black);
      color: #fff;
      font-size: .78rem;
      letter-spacing: .06em;
      text-transform: uppercase;
      border-bottom: 4px solid var(--army-gold);
    }

    tr:nth-child(even) td { background: #fbfaf4; }
    tr:last-child td { border-bottom: none; }

    .footer-callout {
      margin-top: 34px;
      padding: 18px;
      background: var(--army-dark-green);
      color: #fff;
      border-left: 8px solid var(--army-gold);
      font-weight: 700;
    }

    footer {
      background: var(--army-black);
      color: #d8d8d8;
      padding: 18px 40px;
      font-size: .82rem;
      text-align: center;
      border-top: 4px solid var(--army-gold);
    }

    @media (max-width: 1100px) {
      .brand-row, .top-grid { grid-template-columns: 1fr; }
      .brand-row { flex-direction: column; align-items: flex-start; }
      .dashboard-grid { grid-template-columns: 1fr; }
      .metric-grid { grid-template-columns: repeat(2, 1fr); }
      header, main, .top-band, nav .nav-inner { padding-left: 22px; padding-right: 22px; }
    }

    @media (max-width: 650px) {
      .brand-left { flex-direction: column; align-items: flex-start; }
      .metric-grid { grid-template-columns: 1fr; }
      h1 { font-size: 1.35rem; }
      nav a { width: 100%; border-right: 1px solid #363636; }
      th, td { padding: 10px; font-size: .85rem; }
    }

    @media print {
      nav { display: none; }
      body { background: white; }
      .panel, .metric, .service-card, table { box-shadow: none; }
    }
  </style>
</head>
<body>
  <div class="top-band">Official-style operational dashboard | General Leonard Wood Army Community Hospital</div>

  <header>
    <div class="brand-row">
      <div class="brand-left">
        <div class="army-mark" aria-label="Army styled mark">ARMY</div>
        <div>
          <div class="eyebrow">Military Health Readiness Update</div>
          <h1>GLWCH Deputy Commander for Readiness Operational Dashboard</h1>
          <p><strong>As of:</strong> 11 May 2026 &nbsp;|&nbsp; <strong>Mission:</strong> Improving Health and Building Readiness. Anytime, Anywhere — Always.</p>
        </div>
      </div>
      <div class="classification-box">CUI<br />OPSEC</div>
    </div>
  </header>

  <nav aria-label="Dashboard navigation">
    <div class="nav-inner">
      <a href="#summary">Summary</a>
      <a href="#actions">Action Log</a>
      <a href="#readiness">Readiness</a>
      <a href="#public-health">Public Health</a>
      <a href="#focus">Commander Focus</a>
    </div>
  </nav>

  <main>
    <div class="notice">BLUF: May operations are centered on transition stabilization, inspection readiness, summer surge posture, and protecting readiness throughput.</div>

    <section id="summary" class="top-grid" aria-label="Executive summary and commander focus">
      <div class="panel">
        <h2>Executive Summary</h2>
        <p>May operations remain focused on hospital transition stabilization, inspection readiness, summer surge preparation, and readiness throughput. Priority risks include CTMC growth as TOMS coverage decreases, PIT MEDPROS manual entry burden, SRP provider coverage gaps, IDES/MEB DMIS referral issues, and Occupational Health access delays.</p>
      </div>
      <div id="focus" class="panel">
        <h2>DCR Focus Areas</h2>
        <ol class="focus-list">
          <li>Stabilize readiness throughput during summer surge.</li>
          <li>Resolve DMIS/MEDPROS workflow barriers before volume increases.</li>
          <li>Maintain TJC/SAV inspection posture.</li>
          <li>Monitor staffing gaps affecting access, readiness processing, and provider coverage.</li>
          <li>Push sections to identify quick-win CPI actions and update action logs weekly.</li>
        </ol>
      </div>
    </section>

    <section class="metric-grid" aria-label="Key dashboard metrics">
      <div class="metric"><div class="label">SRP Processed</div><div class="value">1,431</div><div class="note">1 Apr–6 May; 65 daily average</div></div>
      <div class="metric"><div class="label">PIT FY26 Trainees</div><div class="value">14,319</div><div class="note">Readiness processing mission</div></div>
      <div class="metric"><div class="label">Occ Health Throughput</div><div class="value">1,583</div><div class="note">April total patients</div></div>
      <div class="metric"><div class="label">IDES/MEB Caseload</div><div class="value">56</div><div class="note">Current IDES-MEB cases</div></div>
    </section>

    <h2 id="actions" class="section-title">Enterprise Due-Outs / Action Log</h2>
    <table aria-label="Enterprise action log">
      <thead><tr><th>Action Item</th><th>POC / Section</th><th>Status</th><th>Expectation / Next Step</th></tr></thead>
      <tbody>
        <tr><td>Hospital Transition</td><td>All Sections</td><td><span class="status yellow">Ongoing</span></td><td>Day 2 work orders ongoing; CAF audits due 30 May; TJC Extension Survey expected July/August.</td></tr>
        <tr><td>DHA SAV / TJC Pre-Extension Survey</td><td>All Sections</td><td><span class="status red">12–14 May</span></td><td>Inspection focus: infection prevention and facilities services.</td></tr>
        <tr><td>MASCAL Events</td><td>All Sections</td><td><span class="status red">18–22 May</span></td><td>Internal exercise 13 May; external full-scale exercise 18 May.</td></tr>
        <tr><td>DPMAP</td><td>All Supervisors</td><td><span class="status yellow">Interim Plans</span></td><td>PY26 interim cycle: 1 Apr–30 Sep 2026. FY27 cycle begins 1 Oct 2026.</td></tr>
        <tr><td>Performance Awards</td><td>All Supervisors</td><td><span class="status yellow">Due 15 Jun</span></td><td>Submission window 1 May–15 Jun 2026. Use FY25 guidance and service line spreadsheet.</td></tr>
        <tr><td>FY27 Flu Campaign</td><td>PHN</td><td><span class="status yellow">Drafting FRAGO</span></td><td>Confirm GLWACH Flu Rodeo location, POCs, and IPR timeline.</td></tr>
        <tr><td>Patient Advocate Representatives</td><td>All Sections</td><td><span class="status blue">Pending Info</span></td><td>Each section identifies primary and alternate patient advocate representatives; leadership excluded.</td></tr>
        <tr><td>Backfill Request</td><td>DPH</td><td><span class="status yellow">Pending Response</span></td><td>72C support request pending regional response for 31 Aug–23 Oct 2026.</td></tr>
      </tbody>
    </table>

    <h2 id="readiness" class="section-title">Readiness Service Line Updates</h2>
    <section class="dashboard-grid" aria-label="Readiness service line updates">
      <article class="service-card"><div class="service-header"><h3>CTMC</h3><span class="status yellow">Yellow</span></div><div class="service-body"><p>Patient volume is increasing as TOMS locations close and summer surge approaches. Clinic staffing is reported at 89%.</p><ul><li>Staffing: 4/5 providers, 4/5 LPNs, 2/3 MSAs.</li><li>Physical exams booked nearly one month out.</li><li>Q-Flow will identify throughput slow points.</li><li>Risks: leadership transition timing, Internal Medicine underlap, TOMS provider gaps, and NLP encounters representing nearly one-fifth of total encounters.</li></ul></div></article>
      <article class="service-card"><div class="service-header"><h3>SRP</h3><span class="status yellow">Yellow</span></div><div class="service-body"><p>SRP processed 1,431 service members over 22 working days, averaging 65 daily with a 1-hour average wait time.</p><ul><li>741 immunizations administered; 33 daily average.</li><li>Absences from mid-May through early July create continuity risk.</li><li>Ms. Bruno out 25 May–5 Jun with no provider coverage.</li></ul></div></article>
      <article class="service-card"><div class="service-header"><h3>PIT</h3><span class="status red">Red / Yellow</span></div><div class="service-body"><p>PIT processed 14,319 trainees in FY26 and 1,758 soldiers from 13 Apr to present.</p><ul><li>Summer surge is the major operational risk.</li><li>MEDPROS remains manually updated for each trainee.</li><li>Additional risks: delayed lab results, waiver volume, staffing concerns, AD details, and new DMIS implementation uncertainty.</li></ul></div></article>
      <article class="service-card"><div class="service-header"><h3>IDES / MEB</h3><span class="status yellow">Yellow</span></div><div class="service-body"><p>Current workload includes 56 IDES-MEB cases, 1 LDES case, 12 TDRL cases, and 1 ABCMR case.</p><ul><li>MEB phase average: 67 days.</li><li>17 cases per PEBLO.</li><li>MTD: 3 MEBs started, 5 completed/sent to PEB/VA, and 5 remote NARSUMs.</li><li>Primary issue: DMIS 6166 referral conversion from 0075.</li></ul></div></article>
    </section>

    <h2 id="public-health" class="section-title">Public Health / Preventive Medicine Updates</h2>
    <section class="dashboard-grid" aria-label="Public Health and Preventive Medicine updates">
      <article class="service-card"><div class="service-header"><h3>PH Nursing / EPI</h3><span class="status green">Green / Yellow</span></div><div class="service-body"><ul><li>236 encounters/consultations.</li><li>12 referrals and 12 animal bites.</li><li>15 reportable cases and 45 ARDS.</li><li>No outbreaks, clusters, trends, or shifts reported.</li><li>Outreach: 3 health education initiatives, 1 community event, and 6 stakeholder meetings.</li></ul></div></article>
      <article class="service-card"><div class="service-header"><h3>Environmental Health</h3><span class="status green">Green</span></div><div class="service-body"><ul><li>Food service inspections: 26/26 completed.</li><li>Barracks: 23/23; barber/beauty: 2/2; gymnasiums: 3/3.</li><li>CYS inspections: 5/5; annual CHSI: 7/7.</li><li>Drinking water surveillance: 24 samples.</li><li>Tick surveillance: 28 drags and 23 work orders submitted.</li><li>Mosquito surveillance begins in June.</li></ul></div></article>
      <article class="service-card"><div class="service-header"><h3>Occupational Medicine / Health</h3><span class="status yellow">Yellow</span></div><div class="service-body"><ul><li>April throughput: 1,583 patients.</li><li>CDTF students: 549; field mission: 739; OH clinic: 303.</li><li>Access delays: RN 3.5 weeks; MD 1 month.</li><li>Future operations: workforce immunization plan, bloodborne pathogen plan, new RN on 1 Jun, new PA on 24 Jul.</li></ul></div></article>
      <article class="service-card"><div class="service-header"><h3>AFWC</h3><span class="status green">Green</span></div><div class="service-body"><ul><li>232 clients seen MTD.</li><li>173 body composition assessments.</li><li>20 health coaching sessions.</li><li>12 biofeedback sessions.</li><li>7 metabolic tests and 4 VO2 max tests.</li><li>6 unit briefings conducted.</li></ul></div></article>
      <article class="service-card"><div class="service-header"><h3>Hearing</h3><span class="status green">Green / Yellow</span></div><div class="service-body"><ul><li>934 hearing tests completed.</li><li>281 annual surveillance audiograms.</li><li>Noise hazard assessments ongoing at ranges.</li><li>Continued focus: hearing program compliance and student clearance tracking.</li></ul></div></article>
      <article class="service-card"><div class="service-header"><h3>Chem Surety</h3><span class="status green">Green / Yellow</span></div><div class="service-body"><ul><li>3rd Quarter FY26 inspections completed 13–17 Apr.</li><li>549 students; 544 cleared without incident.</li><li>4 returned to instruction; 1 loss in POI.</li><li>CWC Treaty SAV: 3–5 Aug.</li><li>4th Quarter inspection: 17–20 Aug.</li></ul></div></article>
      <article class="service-card"><div class="service-header"><h3>PPSL</h3><span class="status yellow">Yellow</span></div><div class="service-body"><ul><li>CTMC PT visits: 1,754; GLWACH PT visits: 707.</li><li>First available specialty access: Audiology 17 days, Chiropractic 25 days, OT 11 days, PT 13 days.</li><li>PT direct access fill rate: 74.1%.</li><li>Risks: upcoming audiologist vacancy on 1 Aug, projected NCO shortage, and TDA authorization gaps.</li></ul></div></article>
      <article class="service-card"><div class="service-header"><h3>Health Physics / Decon</h3><span class="status yellow">Yellow</span></div><div class="service-body"><ul><li>Priorities: downgrade RAM license and decommission Building 310.</li><li>Current operations: training data updates.</li><li>Preparing for NIRSC/RSC meeting on 29 May.</li><li>Dermatology laser safety audit preparation ongoing.</li></ul></div></article>
    </section>

    <div class="footer-callout">Next battle rhythm: Validate action owners, update R/Y/G status weekly, and elevate barriers that threaten readiness throughput or inspection posture.</div>
  </main>

  <footer>General Leonard Wood Army Community Hospital | Operational Dashboard Update | May 2026</footer>
</body>
</html>
