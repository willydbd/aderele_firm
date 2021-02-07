-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2021 at 12:13 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aderele_firm`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `monthYear` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `author`, `publisher`, `title`, `slug`, `body`, `photo`, `status`, `deleted_at`, `created_at`, `updated_at`, `monthYear`) VALUES
(1, NULL, NULL, 'New York County Commercial Division', NULL, '<p>New York courts routinely apply the law of the place where the evidence in question will be introduced at trial or the location of the discovery proceeding when deciding privilege issues. However, there are circumstances in which an interest-balancing analysis is properly undertaken to decide whether another state’s law should govern the evidentiary privilege. This is a case that presents such circumstances. Moreover, as in Bay Area Toll Auth., in this case, the balance of interests favors the application of the statutory privilege. Contrary to defendant’s argument, Supreme Court correctly found that, in these circumstances, New York’s interest in the full disclosure of information needed to allow a defendant to mount a defense in court is outweighed by Wisconsin’s interest, embodied in Wisconsin Statutes § 601.465, in its regulation of insurance. The communications at issue, while relevant to the underlying litigation to the extent they relate to the securitization trusts, certificates and insurances policies, were generated as part of OCI’s investigation, regulation, and rehabilitation of Ambac. Contrary to defendant’s contentions, this Court’s decision in Matter of People v PriceWaterhouseCoopers, LLP (150 AD3d 578 [1st Dept 2017], lv denied 29 NY3d 1117 [2017]) should not be read as rejecting any requirement of an interest-balancing analysis in deciding which state’s law governs privilege issues where New York is the place of trial and the discovery proceeding. Further, it is distinguishable from the instant case in that it involved the interests of the New York State Attorney General but not those of a governmental agency of a different state, and thus did not implicate real issues of interstate comity.</p>', NULL, 1, NULL, '2020-12-29 22:59:32', '2021-01-22 06:08:09', 'December, 2021'),
(2, NULL, NULL, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolo.', NULL, '<p>The remaining allegations, that the individual defendants diverted firm monies and assets to themselves and paid personal expenses with firm monies, state a claim for breach of fiduciary duty. Allegations of mismanagement or diversion of firm assets plead a wrong to the business entity. The fifth cross claim is, therefore, derivative insofar as it alleges breach of fiduciary duty. The moving defendants seek dismissal thereof on the ground that Hargraves does not have standing to maintain a derivative action because she withdrew from the firm in February 2017. In order to maintain a derivative cause of action, a plaintiff must be a shareholder of the corporation. The moving defendants are correct that, once a plaintiff withdraws from an LLC, she loses standing to maintain any derivative causes of action on its behalf. The requirement that ownership continue until commencement of the derivative action is rooted in practical considerations. <i>Although a derivative action is theoretically brought for the benefit of the corporation (or LLC), in a very real sense, the standing of the shareholder (or member) is based on the fact that she is defending her own interests as well as those of the corporation (or LLC). When a plaintiff voluntarily disposes of stock, her rights as a shareholder cease, and her interest in the litigation is terminated. Being a stranger to the corporation, the former stockowner lacks standing to institute or continue the derivative suit. When a corporation has dissolved, however, the shareholder’s interest does not abruptly end. At a minimum, the stockholder possesses a substantial interest in the distribution of corporate assets. Even if dissolution and distribution of assets are accomplished contemporaneously, the shareholder’s stake in any cause </i>of action existing in favor of the corporation remains quite real. From a purely analytical standpoint, then, a shareholder of a dissolved corporation has sufficient interest in a derivative action to satisfy the spirit of the rule requiring ownership at the commencement of the action. Thus, corporate dissolution, in itself, will not preclude a qualified plaintiff from being deemed a shareholder at the time of bringing the derivative action. The record reflects that, contrary to the moving defendants’ contentions, Quatela Hargraves &amp; Chimeri, PLLC, was dissolved as of March 1, 2017. Thus, contrary to the moving defendants’ contentions, Hargraves has standing to maintain a derivative action.</p>', NULL, 1, NULL, '2020-12-30 04:03:33', '2021-01-27 00:05:56', 'December, 2021'),
(3, NULL, NULL, 'At a minimum, the stockholder possesses a substantial interest in the distribution of corporate assets.', NULL, '<p>From a purely analytical standpoint, then, a shareholder of a dissolved corporation has sufficient interest in a derivative action to satisfy the spirit of the rule requiring ownership at the commencement of the action. Thus, corporate dissolution, in itself, will not preclude a qualified plaintiff from being deemed a shareholder at the time of bringing the derivative action. Although a derivative action is theoretically brought for the benefit of the corporation (or LLC), in a very real sense, the standing of the shareholder (or member) is based on the fact that she is defending her own interests as well as those of the corporation (or LLC). When a plaintiff voluntarily disposes of stock, her rights as a shareholder cease, and her interest in the litigation is terminated. Being a stranger to the corporation, the former stockowner lacks standing to institute or continue the derivative suit. When a corporation has dissolved, however, the shareholder’s interest does not abruptly end. &nbsp; The record reflects that, contrary to the moving defendants’ contentions, Quatela Hargraves &amp; Chimeri, PLLC, was dissolved as of March 1, 2017. Thus, contrary to the moving defendants’ contentions, Hargraves has standing to maintain a derivative action. The remaining allegations, that the individual defendants diverted firm monies and assets to themselves and paid personal expenses with firm monies, state a claim for breach of fiduciary duty. Allegations of mismanagement or diversion of firm assets plead a wrong to the business entity. The fifth cross claim is, therefore, derivative insofar as it alleges breach of fiduciary duty. The moving defendants seek dismissal thereof on the ground that Hargraves does not have standing to maintain a derivative action because she withdrew from the firm in February 2017. In order to maintain a derivative cause of action, a plaintiff must be a shareholder of the corporation. The moving defendants are correct that, once a plaintiff withdraws from an LLC, she loses standing to maintain any derivative causes of action on its behalf. The requirement that ownership continue until commencement of the derivative action is rooted in practical considerations.&nbsp;</p>', NULL, 1, NULL, '2021-01-20 01:44:55', '2021-01-20 03:49:18', 'January, 2021'),
(4, NULL, NULL, 'The communications at issue, while relevant to the underlying litigation to the extent they relate to the securitization trusts.', NULL, '<p>The communications at issue, while relevant to the underlying litigation to the extent they relate to the securitization trusts, certificates and insurances policies, were generated as part of OCI’s investigation, regulation, and rehabilitation of Ambac. Contrary to defendant’s contentions, this Court’s decision in Matter of People v PriceWaterhouseCoopers, LLP (150 AD3d 578 [1st Dept 2017], lv denied 29 NY3d 1117 [2017]) should not be read as rejecting any requirement of an interest-balancing analysis in deciding which state’s law governs privilege issues where New York is the place of trial and the discovery proceeding. New York courts routinely apply the law of the place where the evidence in question will be introduced at trial or the location of the discovery proceeding when deciding privilege issues. However, there are circumstances in which an interest-balancing analysis is properly undertaken to decide whether another state’s law should govern the evidentiary privilege. This is a case that presents such circumstances. Moreover, as in Bay Area Toll Auth., in this case, the balance of interests favors the application of the statutory privilege. Contrary to defendant’s argument, Supreme Court correctly found that, in these circumstances, New York’s interest in the full disclosure of information needed to allow a defendant to mount a defense in court is outweighed by Wisconsin’s interest, embodied in Wisconsin Statutes § 601.465, in its regulation of insurance. &nbsp;Further, it is distinguishable from the instant case in that it involved the interests of the New York State Attorney General but not those of a governmental agency of a different state, and thus did not implicate real issues of interstate comity.</p>', NULL, 1, NULL, '2021-01-20 01:46:51', '2021-01-20 03:51:02', 'January, 2021'),
(5, NULL, NULL, 'When a corporation has dissolved, however, the shareholder’s interest does not abruptly end.', NULL, '<p>When a plaintiff voluntarily disposes of stock, her rights as a shareholder cease, and her interest in the litigation is terminated. Being a stranger to the corporation, the former stockowner lacks standing to institute or continue the derivative suit. When a corporation has dissolved, however, the shareholder’s interest does not abruptly end. At a minimum, the stockholder possesses a substantial interest in the distribution of corporate assets. Even if dissolution and distribution of assets are accomplished contemporaneously, the shareholder’s stake in any cause of action existing in favor of the corporation remains quite real. From a purely analytical standpoint, then, a shareholder of a dissolved corporation has sufficient interest in a derivative action to satisfy the spirit of the rule requiring ownership at the commencement of the action. Thus, corporate dissolution, in itself, will not preclude a qualified plaintiff from being deemed a shareholder at the time of bringing the derivative action. The record reflects that, contrary to the moving defendants’ contentions, Quatela Hargraves &amp; Chimeri, PLLC, was dissolved as of March 1, 2017. Thus, contrary to the moving defendants’ contentions, Hargraves has standing to maintain a derivative action.</p>', NULL, 1, NULL, '2021-01-20 01:48:33', '2021-01-21 09:32:02', 'January, 2021'),
(6, NULL, NULL, 'Tenant Could Not Bring and Then Consolidate Two Actions to Avoid No Counterclaims Provision in Lease', NULL, '<p>WJ argues that, by commencing the Second Action rather than asserting its claim as a counterclaim in the First action, Nomad is attempting an end run of the discovery process, and urges this court to consolidate the two actions. Nomad argues that the parties’ Lease precludes consolidation because it contains no set-off and waiver of counterclaims provisions that should not be circumvented by the consolidation of the two lawsuits.</p><p>Specifically, section 2(C) of the Lease provides:</p><blockquote><p>Tenant shall pay all Fixed Rent and Additional Rent due hereunder … in advance, in equal monthly installments on the first day of every month, without any prior notice, demand, off-set, deduction or abatement whatsoever</p></blockquote><p><i>Section 20(N) provides:</i></p><blockquote><p><i>If Landlord commences any summary proceeding for nonpayment of rent, Tenant will not interpose any non-mandatory counterclaim of whatever nature or description in any such proceeding</i></p></blockquote><p><i>Nomad argues that WJ is attempting to consolidate the Second Action with the [First Action] in an effort to, in effect, off-set its obligation to pay rent to Landlord in (violation of§ 2(C) of the Lease) and to interpose an unrelated counterclaim against Landlord in response to its claim for unpaid rent (in violation of§ 20(N) of the Lease). Generally, consolidation of two related actions would be appropriate where they involve the same parties and common questions of law and/or fact, and the latter filed action would be consolidated into the first filed action. However, where a lease contains a waiver of counterclaim provision, such provision may not be circumvented by consolidating the landlord’s summary proceeding with the Supreme Court action. Waiver of counterclaim provisions in a lease are enforceable and, where the parties have agreed to such waiver in a lease, they are bound by its terms. For the avoidance of doubt, and as discussed on the record, to the extent that the issues in this proceeding are materially related to the Second Action, WJ may always move for a stay of the Second Action in Part 52.</i></p>', NULL, 1, NULL, '2021-01-20 01:53:42', '2021-01-21 09:31:42', 'January, 2021'),
(7, NULL, NULL, 'Primary Jurisdiction Doctrine Calls for Dismissal of Lawsuit While Administrative Action Pending', NULL, '<p>We agree with the Supreme Court’s determination to grant the defendant’s motion to dismiss the complaint. The doctrine of primary jurisdiction is intended to co-ordinate the relationship between courts and administrative agencies to the end that divergence of opinion between them not render ineffective the statutes with which both are concerned, and to the extent that the matter before the court is within the agency’s specialized field, to make available to the court in reaching its judgment the agency’s views concerning not only the factual and technical issues involved but also the scope and meaning of the statute administered by the agency. While concurrent jurisdiction does exist, where there is an administrative agency which has the necessary expertise to dispose of an issue, in the exercise of discretion, resort to a judicial tribunal should be withheld pending resolution of the administrative proceeding. Here, this action raises issues—such as whether the Public Service Commission has, pursuant to Public Service Law § 115, directed that the defendant award the contracts at issue to the lowest responsible bidder, and whether the defendant’s change to the contracts’ terms and conditions violates that directive—that should be re solved in the pending proceeding before the Public Service Commission before resort, if any, is made to judicial review.</p>', NULL, 1, NULL, '2021-01-21 09:11:32', '2021-01-26 22:45:53', 'January, 2021'),
(8, NULL, NULL, 'No Personal Jurisdiction Based on Solicitation of Business in State Without More', NULL, '<p>In Mejia-Haffner, the plaintiffs sued a Vermont ski resort in Queens County. Even though the resort advertised in New York, the Second Department affirmed the dismissal for lack of personal jurisdiction, explaining:</p><blockquote><p>A foreign corporation is amenable to suit in New York courts under CPLR&nbsp;301 if it has engaged in such a continuous and systematic course of doing business here that a finding of its presence in this jurisdiction is warranted. <strong>Mere solicitation of business</strong> within New York <strong>will not subject a defendant to New York’s jurisdiction</strong>. Instead, a plaintiff asserting jurisdiction under CPLR 301 must satisfy the standard of <strong>solicitation </strong>plus, which requires a showing of activities of substance in addition to solicitation.</p><p>Even assuming that [the defendant] engaged in substantial&nbsp;advertising in New York, as the plaintiffs claim, the plaintiffs have not demonstrated that [the defendant] also engaged in substantial&nbsp;activity within this State sufficient to satisfy the solicitation-plus standard. Contrary to the plaintiffs’ contention, this Court’s decision in Grimaldi v Guinn (72 AD3d 37, 49-50) does not stand for the principle that a business’s interactive website, accessible in New York, subjects it to suit in this State for all purposes. Instead, the Grimaldi decision stands only for the more limited principle that a website <strong>may </strong>support specific jurisdiction in New York where the claim asserted has some <strong>relationship to the business transacted via the website</strong>. Here, even [the defendant’s] alleged substantial solicitation in New York constitutes no more than solicitation.</p></blockquote>', NULL, 1, NULL, '2021-01-21 09:19:08', '2021-01-21 09:19:08', 'January, 2021'),
(9, NULL, NULL, 'Insurance Law’s Notice Requirements Strictly Construed', NULL, '<p>In Schoonover, the plaintiffs, trustees of an insurance trust established by a now-deceased partner at Skadden Arps, purchased life insurance from defendant Mass Mutual through Skadden. From the date of issuance until the insured’s retirement, Skadden paid the monthly charges on the policy. Upon the insured’s retirement, Mass Mutual issued a letter of portability. When premiums had thereafter not been paid, Mass Mutual issued non-payment notices to Skadden and then ultimately notices of cancellation to Skadden as well. Justice Ramos granted summary judgment to the plaintiffs, ruling that the notices to Skadden were not sufficient and that the insurer was required to provide actual notice to the actual address of the insured:</p><blockquote><p>[F]orfeiture of life insurance coverage for nonpayment of premiums is not favored in the law, and will not be enforced absent a clear intention to claim that right. . . . In the same vein, an insurer may not depend upon a default to which its own wrongful act or negligence contributed, and but for which a lapse might not have occurred.</p><p>Here, the Certificate and the Policy entitle the Insured to a billing notice after he retired from Skadden, and conditions cancellation of the Policy upon the giving of that notice to him, in addition to a pre-lapse or default notice to the owners of the Certificate, the plaintiffs.</p></blockquote>', NULL, 1, NULL, '2021-01-21 10:26:43', '2021-01-21 10:26:43', 'January, 2021'),
(10, NULL, NULL, 'Recovering over nine hundred million in three month.', NULL, '<p>Skadden, and conditions cancellation of the Policy upon the giving of that notice to him, in addition to a pre-lapse or default notice to the owners of the Certificate, the plaintiffs. Policy upon the giving of that notice to him, in addition to a pre-lapse.&nbsp; Here, the Certificate and the Policy entitle the Insured to a billing notice after he retired from Skadden, and conditions cancellation of the Policy upon the giving of that notice to him, in addition to a pre-lapse or default notice to the owners of the Certificate, the plaintiffs. Policy upon the giving of that notice to him, in addition to a pre-lapse or default notice to the owners of the Certificate, the plaintiffs. &nbsp;Entitle the Insured to a billing notice after he retired from Skadden, and conditions cancellation of the Policy upon the giving of that notice to him, in addition to a pre-lapse or default notice to the owners of the Certificate, the plaintiffs. Policy upon the giving of that notice to him, in addition to a pre-lapse.&nbsp;</p>', NULL, 1, NULL, '2021-01-21 10:36:32', '2021-01-22 09:20:27', 'January, 2021'),
(11, NULL, NULL, 'Notice Requirements Strictly Construed', NULL, '<p>until the insured’s retirement, Skadden paid the monthly charges on the policy. Upon the insured’s retirement, Mass Mutual issued a letter of portability. When premiums had thereafter not been paid, Mass Mutual issued non-payment notices to Skadden and then ultimately notices of cancellation to Skadden as well. Justice Ramos granted summary judgment to the plaintiffs, ruling that the notices to Skadden were not sufficient and that the insurer was required to provide actual notice to the actual address of the insured:</p>', NULL, 1, NULL, '2021-01-21 11:24:47', '2021-01-22 09:22:22', 'January, 2021'),
(12, NULL, NULL, 'Notice Requirements Strictly Construed', NULL, '<p><i>Defendant — who was also the defendant in Blackrock Balanced Capital Portfolio (FI) v U.S. Bank N.A. (165 AD3d 526 [1st Dept 2018]) — may not relitigate the issue that it raised therein and that was decided against it, namely, “Once performance of the demand requirement in the no-action clause is excused, performance of the</i> entire provision is excused, <strong>including the requirement that demand be made by 25% of the certificate holders” (Blackrock, 165 AD3d at 528). until the insured’s retirement, Skadden paid the monthly charges on the policy. Upon the insured’s retirement, Mass Mutual issued a letter of portability. When premiums had thereafter not been paid, Mass Mutual issued non-payment notices to Skadden and then ultimately notices of cancellation to Skadden as well. Justice Ramos granted summary judgment to the plaintiffs, ruling that the notices to Skadden were not sufficient and that the insurer was required to provide actual notice to the actual address of the insured:</strong></p>', NULL, 1, NULL, '2021-01-21 11:25:48', '2021-01-22 06:07:17', 'January, 2021'),
(13, NULL, NULL, 'Just A Quick Testing', NULL, '<p>Few text would do the magic. Hope it works without itches</p>', NULL, 1, NULL, '2021-01-23 17:06:30', '2021-01-26 22:22:24', 'January, 2021'),
(14, NULL, NULL, 'Insurance Coverage for Nonpayment of Premiums', NULL, '<p>In Schoonover, the plaintiffs, trustees of an insurance trust established by a now-deceased partner at Skadden Arps, purchased life insurance from defendant Mass Mutual through Skadden. From the date of issuance until the insured’s retirement, Skadden paid the monthly charges on the policy. Upon the insured’s retirement, Mass Mutual issued a letter of portability. When premiums had thereafter not been paid, Mass Mutual issued non-payment notices to Skadden and then ultimately notices of cancellation to Skadden as well. Justice Ramos granted summary judgment to the plaintiffs, ruling that the notices to Skadden were not sufficient and that the insurer was required to provide actual notice to the actual address of the insured:</p><blockquote><p>[F]orfeiture of life insurance coverage for nonpayment of premiums is not favored in the law, and will not be enforced absent a clear intention to claim that right. . . . In the same vein, an insurer may not depend upon a default to which its own wrongful act or negligence contributed, and but for which a lapse might not have occurred.</p><p>Here, the Certificate and the Policy entitle the Insured to a billing notice after he retired from Skadden, and conditions cancellation of the Policy upon the giving of that notice to him, in addition to a pre-lapse or default notice to the owners of the Certificate, the plaintiffs.</p><p>In Schoonover, the plaintiffs, trustees of an insurance trust established by a now-deceased partner at Skadden Arps, purchased life insurance from defendant Mass Mutual through Skadden. From the date of issuance until the insured’s retirement, Skadden paid the monthly charges on the policy. Upon the insured’s retirement, Mass Mutual issued a letter of portability. When premiums had thereafter not been paid, Mass Mutual issued non-payment notices to Skadden and then ultimately notices of cancellation to Skadden as well. Justice Ramos granted summary judgment to the plaintiffs, ruling that the notices to Skadden were not sufficient and that the insurer was required to provide actual notice to the actual address of the insured:</p></blockquote><blockquote><p>[F]orfeiture of life insurance coverage for nonpayment of premiums is not favored in the law, and will not be enforced absent a clear intention to claim that right. . . . In the same vein, an insurer may not depend upon a default to which its own wrongful act or negligence contributed, and but for which a lapse might not have occurred.</p><p>Here, the Certificate and the Policy entitle the Insured to a billing notice after he retired from Skadden, and conditions cancellation of the Policy upon the giving of that notice to him, in addition to a pre-lapse or default notice to the owners of the Certificate, the plaintiffs.</p></blockquote>', NULL, 1, NULL, '2021-01-24 02:37:40', '2021-01-26 22:39:58', 'January, 2021'),
(17, NULL, NULL, 'A quick testing', NULL, '<p>This is the body of this test blog post</p>', NULL, 0, NULL, '2021-01-26 09:14:16', '2021-01-26 09:14:16', 'January, 2021'),
(18, NULL, NULL, 'A quick testing', NULL, '<p>This is the body of this test blog post</p>', NULL, 0, '2021-01-26 22:19:23', '2021-01-26 09:15:38', '2021-01-26 22:19:23', 'January, 2021'),
(19, NULL, NULL, 'Stock Loan Lowdown: A Duo of Discovery Disputes', NULL, '<p>It’s been a while since posted an update on the <i>Iowa Public</i> stock loan dispute. But, truth be told discovery has been rolling right along, and there has not been overmuch to discuss. I’m going to use this post to do a quick recap on some of the more interesting discovery disputes that have arisen since our last post, and otherwise cross my fingers for some more substantive briefing in 2021!</p><p>It’s been a while since posted an update on the <i>Iowa Public</i> stock loan dispute. But, truth be told discovery has been rolling right along, and there has not been overmuch to discuss. I’m going to use this post to do a quick recap on some of the more interesting discovery disputes that have arisen since our last post, and otherwise cross my fingers for some more substantive briefing in 2021!</p><p>Before I launch in, you may want to take a peek at our other Stock Loan Lowndowns:</p><ul><li>&nbsp;<ul><li><a href=\"https://www.schlamstone.com/monitoring-market-manipulation-stock-loan-lowdown/\">Stock Loan Lowdown</a></li><li><a href=\"https://www.schlamstone.com/stock-loan-lowdown-third-time-through-the-order/\">Stock Loan Lowdown: Third Time Through the Order</a></li><li><a href=\"https://www.schlamstone.com/stock-loan-lowdown-fourth-times-still-not-quite-the-final-and-time-will-tell-if-its-the-charm/\">Stock Loan Lowdown: Fourth Time’s (still not quite) the Final…and Time Will Tell if it’s the Charm</a></li><li><a href=\"https://www.schlamstone.com/stock-loan-lowdown-class-not-dismissed/\">Stock Loan Lowdown: Class NOT Dismissed</a></li><li><a href=\"https://www.schlamstone.com/stock-loan-lowdown-is-the-answer-a-lemon/\">Stock Loan Lowdown: Is the Answer a Lemon?</a></li></ul></li></ul><p>First, in the course of negotiating an ESI agreement, Plaintiffs proposed a review procedure known as an “elusion” analysis.&nbsp; This type of analysis is designed to ensure the adequacy and accuracy of search terms by reviewing a small, random sample (Plaintiffs requested 2000 documents) of documents in Defendants’ possession that would not otherwise be reviewed for responsiveness, as they did not hit on any of the negotiated search terms. As proposed by plaintiffs, Defendants would first review the requested sample for privilege, then produce the remainder to Plaintiffs with the understanding that the parties would subsequently meet and confer to assess whether the results of the elusion analysis warranted any revisions to the existing search terms.</p><p>In opposition, Defendants argue that Plaintiff’s request was untimely, with the initial proposal coming two months after the parties first exchange initial search terms lists, and likely to cause significant delays in the exchange of documents. Challenging the case law cited by Plaintiffs, Defendants also point out that elusion analysis most frequently arises in cases utilizing technology-assisted review (“TAR”), rather than search term-based review used here, because TAR requires non-responsive samples in order to better “train” the AI used in predictive coding. Finally, Defendants note that the would be willing to meet and confer regarding additional search terms should Plaintiffs, after review of the hits produced by the existing terms, identify significant holes in Defendant’s productions.</p><p>Judge Polk Faillla ordered the parties to appear for a telephone conference, and the parties argued the matter at length. &nbsp;I’ll link the transcript <a href=\"https://www.schlamstone.com/wp-content/uploads/2021/01/Dok.-No.-178-Transcript-of-Elusion-Argument.pdf\">here</a> for anyone interested. After a brief recess, the judge issued a decision on the record denying the motion for the elusion analysis. While the court did agree that the review of an additional 2000 documents was not especially burdensome for the Defendants, Judge Polk Failla was persuaded that “elusion, as an analysis, as a mechanism of analysis [was] more appropriate to technology-assisted review cases or cases in which there has been less forethought placed into search terms or a less granular view at the front end of the case.” Insofar as plaintiffs had hoped that elusion analysis would provided a valuable cross-check as to the accuracy of their search terms, the court found that the plaintiff’s ability to request additional search terms if new information was gleaned from the documents or through depositions would be sufficient. &nbsp;The questions posed by the court showed that it was a thoughtful decision, but having been on the plaintiff’s side in actions with wide-ranging discovery, I am personally very sympathetic to the idea that “you don’t know what you don’t know,” and, of course the discovery-centric corollary, “you can’t reduce to a search term what you don’t know.”</p><p>The second discovery dispute I thought worthy of a quick note was a request by Plaintiffs that Defendant Bank of America/Merrill Lynch (“BoA/ML”) produce information reflecting its profits and loses in the stock lending market. The P&amp;L data would show the prices BoA/ML paid to borrow securities from class members, the prices BoA/ML charged class members to lend securities, and, from those numbers, the “spread” kept by BoA/ML—that is, the spread that Plaintiffs argue Defendants inflated by way of the alleged conspiracy. While the actual relevance of the P&amp;L data wasn’t up for much dispute in this context, Defendants argued that, while the reports themselves may be relevant, Plaintiffs had not adequately demonstrated that the underlying databases contributing to the reports contained relevant information. They further argued that, despite deposing a BoA/ML employee on the issue, “Plaintiffs still have not identified what additional databases, reports and information they want[.]” &nbsp;Again, I’m inclined to side with Plaintiffs here – deposition or no, identifying specific databases and report types is a heck of a lot easier from inside the company than out. Judge Polk Failla took the same position, ultimately granting Plaintiffs’ motion to compel.</p><p>The court also made fairly short work of Defendant’s argument that Plaintiffs had not adequately met their meet and confer obligations prior to bringing their letter motion. &nbsp;While admonishing Plaintiffs with the observation that they “may have acted more carefully to better chronicle a record that they had conferred with [BoA/ML] before filing their motion,” the court found it sufficient that “Plaintiffs had given [BoA/ML] a deadline to respond to their discovery requests, which had already been the subject of repeated conversations between the parties, [and] [BoA/ML] failed to respond within the requested timeframe.” A copy of the brief decision is available <a href=\"https://www.schlamstone.com/wp-content/uploads/2021/01/Dok.-No.-260-Order-on-Discovery-Motion-re.-PL-data.pdf\">here</a>.</p><p>Pursuant to the most recent scheduling order, we should see Plaintiff’s opening motions in support of class certification and supporting expert reports by early February, so keep your eyes peeled for a post on that topic. And with that, signing off for now!</p>', NULL, 1, NULL, '2021-01-31 22:29:47', '2021-01-26 22:39:22', 'February, 2021');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `blog_id`, `category_id`) VALUES
(1, 18, 4),
(2, 17, 6),
(3, 18, 5),
(4, 14, 8),
(5, 13, 5),
(6, 19, 8),
(7, 19, 1),
(8, 19, 5),
(9, 12, 1),
(10, 12, 2),
(11, 11, 3),
(12, 11, 6),
(13, 10, 1),
(14, 10, 4),
(15, 9, 5),
(16, 9, 6),
(17, 8, 7),
(18, 7, 3),
(19, 7, 7),
(20, 6, 6),
(21, 5, 1),
(22, 5, 3),
(23, 4, 4),
(24, 4, 8),
(25, 3, 1),
(26, 3, 6),
(27, 2, 5),
(28, 2, 7),
(29, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_tag`
--

CREATE TABLE `blog_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_tag`
--

INSERT INTO `blog_tag` (`id`, `blog_id`, `tag_id`) VALUES
(1, 18, 1),
(2, 18, 4),
(3, 17, 2),
(4, 17, 4),
(5, 14, 6),
(6, 14, 7),
(7, 13, 4),
(8, 19, 6),
(9, 19, 2),
(10, 12, 2),
(11, 12, 4),
(12, 11, 1),
(13, 11, 2),
(14, 10, 1),
(15, 10, 3),
(16, 10, 5),
(17, 9, 7),
(18, 8, 4),
(19, 8, 5),
(20, 8, 6),
(21, 7, 1),
(22, 7, 6),
(23, 6, 2),
(24, 6, 3),
(25, 5, 6),
(26, 5, 7),
(27, 4, 1),
(28, 4, 6),
(29, 3, 5),
(30, 3, 6),
(31, 2, 2),
(32, 2, 5),
(33, 1, 2),
(34, 1, 4),
(35, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Commercial', NULL, NULL, '2021-01-15 13:19:35', '2021-01-15 13:19:35'),
(2, 'Criminal', NULL, NULL, '2021-01-15 13:20:07', '2021-01-15 13:20:07'),
(3, 'Contract', '<br>', NULL, '2021-01-16 04:05:30', '2021-01-19 03:56:20'),
(4, 'Taxation', '<br>', NULL, '2021-01-19 03:33:45', '2021-01-19 03:33:45'),
(5, 'General', 'General blogs<div><br></div>', NULL, '2021-01-19 04:13:28', '2021-01-19 04:14:26'),
(6, 'Wills & Probate & Inheritance', '<br>', NULL, '2021-01-19 04:37:53', '2021-01-19 04:37:53'),
(7, 'Supreme Court Judgement', 'Your first call on latest supreme court judgments.', NULL, '2021-01-21 09:07:14', '2021-01-21 09:07:14'),
(8, 'Debt recovery', NULL, NULL, '2021-01-22 09:09:57', '2021-01-22 09:09:57');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribed` tinyint(4) NOT NULL DEFAULT 0,
  `enquiry` tinyint(4) NOT NULL DEFAULT 0,
  `info` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `phone`, `msg_subject`, `message`, `subscribed`, `enquiry`, `info`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Champ', 'lovethbwiliams@yahoo.com', '08066619744', 'Testing', 'Testing the email sending module', 0, 1, 0, NULL, '2021-01-28 17:44:25', '2021-01-28 17:44:25'),
(2, 'Champ', 'lovethbwiliams@yahoo.com', '08066619744', 'Testing', 'Testing the email sending module', 0, 1, 0, NULL, '2021-01-28 17:50:13', '2021-01-28 17:50:13'),
(3, 'Dbd', 'admin@aderelefirm.com', '12345678901', 'Another Testing', 'This is another testing', 0, 1, 0, NULL, '2021-01-28 18:08:05', '2021-01-28 18:08:05'),
(4, 'Dbd', 'admin@aderelefirm.com', '12345678901', 'Another Testing', 'This is another testing', 0, 1, 0, NULL, '2021-01-28 18:09:13', '2021-01-28 18:09:13'),
(5, 'Champ', 'info@aderelefirm.com', '12345678909', 'Third Testing', 'Another testing for the third time.', 0, 0, 1, NULL, '2021-01-28 18:11:20', '2021-01-28 18:11:20'),
(6, 'A.O.', 'enquiry@aderelefirm.com', '12345678900', 'Testing again', 'Try again if would allow without manual approval', 0, 1, 0, NULL, '2021-01-28 18:14:07', '2021-01-28 18:14:07'),
(7, 'Smith', 'test@testing.com', '01234567890', 'Testing CC', 'A new testing for cc', 0, 1, 0, NULL, '2021-01-28 18:19:39', '2021-01-28 18:19:39'),
(8, 'James', 'goodtesting@test.com', '12345678901', 'Test Test Test', 'This is testing with checking any option', 0, 0, 0, NULL, '2021-01-28 18:22:35', '2021-01-28 18:22:35'),
(9, 'Champion Williams', 'client@testing.com', '08066619744', 'I want to recover my money', 'I want to recover my money from someone. How do I apply?', 0, 1, 0, NULL, '2021-01-28 18:43:23', '2021-01-28 18:43:23'),
(10, 'Champ Smith', 'wills@smith.com', '09012345678', 'Testing Date Time', 'This is testing datetime function', 0, 1, 0, NULL, '2021-01-28 18:47:34', '2021-01-28 18:47:34'),
(11, 'Williams', 'willydbd@yahoo.com', '08066619744', 'Contact Feedback', 'Client getting feedback testing', 0, 1, 0, NULL, '2021-01-28 22:49:23', '2021-01-28 22:49:23'),
(12, 'Williams', 'willydbd@yahoo.com', '08066619744', 'Contact Feedback', 'Client getting feedback testing', 0, 1, 0, NULL, '2021-01-28 22:49:59', '2021-01-28 22:49:59'),
(13, 'Williams', 'willydbd@yahoo.com', '08066619744', 'Contact Feedback', 'Client getting feedback testing', 0, 1, 0, NULL, '2021-01-28 22:50:49', '2021-01-28 22:50:49'),
(14, 'Williams', 'willydbd@yahoo.com', '08066619744', 'Contact Feedback', 'Client getting feedback testing', 0, 1, 0, NULL, '2021-01-28 22:51:56', '2021-01-28 22:51:56'),
(15, 'Champ', 'info@aderelefirm.com', '08066619744', 'New Testing', 'I really hope this work.', 0, 1, 0, NULL, '2021-01-28 23:26:38', '2021-01-28 23:26:38'),
(16, '<p>Williams</p>', '<p>willydbd@yahoo.com</p>', '08066619744', '', '', 0, 1, 0, NULL, '2021-01-30 22:04:04', '2021-01-30 22:04:04'),
(17, '<p>Champ Baba</p>', '<p>willydbd@yahoo.com</p>', '08066619744', '<p>Final Testing</p>', '<p>This should be the last testing. I really hope so.</p>', 0, 0, 1, NULL, '2021-01-31 08:25:02', '2021-01-31 08:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_15_131512_create_blogs_tables', 1),
(5, '2021_01_15_133331_create_categories_table', 1),
(6, '2021_01_15_133420_create_clients_table', 1),
(7, '2021_01_15_144054_create_blogs_table', 2),
(9, '2021_01_20_221242_create_blog_category_table', 3),
(12, '2021_01_21_134855_create_tags_table', 4),
(14, '2021_01_21_142651_create_blog_tag_table', 5),
(16, '2021_01_21_191323_rename_tags_in_blogs_table', 6),
(18, '2021_01_21_203725_create_practices_table', 7),
(19, '2021_01_24_003012_add_month_year_to_blogs_table', 8),
(20, '2021_01_26_113321_add_name_to_clients', 9),
(21, '2021_01_27_044858_create_blog_category_table', 10),
(22, '2021_01_27_061012_drop_category_id_from_blog_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `practices`
--

CREATE TABLE `practices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `practices`
--

INSERT INTO `practices` (`id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Civil Litigation', '<p>Representing our clients in major litigations is the bread and butter of our civil litigation practice. These cases often involve hotly-contested fights to control or dissolve companies, protecting clients’ valuable intellectual property or contractual rights, or disputes over valuable real estate. Just as often, they begin with a request for emergency relief that may have a significant impact on the business right at the outset. Our seasoned lawyers are adept at litigating such high-stakes issues quickly.</p><p>We provide our clients with skilled, aggressive representation even before litigation begins, continuing all the way through trial and appeal. But whenever possible, we use the litigation process to achieve our clients’ business objectives by obtaining victory on the merits or a favorable settlement without ever having to go to trial. We view success through our clients’ eyes and understand that our clients approach litigation as a means to an end and not as an end in itself, which is why our clients keep coming back to us to meet their litigation needs.</p><p>We litigate across the country, but our focus is on litigation and appeals in the state and federal courts located in New York City. Most of our cases are litigated in the United States District Courts for the Southern and Eastern Districts of New York and the Commercial Divisions of New York’s state courts, which are a global venue of choice for litigating challenging and complex business disputes. We also litigate in New York’s bankruptcy courts.</p><p>We have deep roots in the Southern and Eastern Districts. Many of our lawyers have served in the U.S. Attorney’s offices or clerked for federal judges in those districts or in the federal Courts of Appeals. For over twenty-four years, our lawyers have published a <a href=\"https://www.schlamstone.com/media/publications/\">regular column for the New York Law Journal</a> that analyzes recent Eastern District cases of doctrinal or practical interest and we <a href=\"https://www.schlamstone.com/edny/\">blog</a> on noteworthy developments in the Eastern District.</p><p>We also appear regularly in front of the specialized and experienced judges who serve in the Commercial Divisions of New York’s state courts, sit with them on court and bar committees, and are often invited to serve as court-appointed mediators, special masters, and receivers. To capitalize on our familiarity with the Commercial Division judges, large firms from both inside and outside New York often engage us as co-counsel in important commercial cases. We also <a href=\"https://www.schlamstone.com/commercial/\">blog</a> on noteworthy developments in the Commercial Division.</p>', NULL, '2021-01-21 12:55:43', '2021-01-21 12:55:43'),
(2, 'Criminal Defence', '<p>We perform internal investigations for clients, and represent clients in governmental investigations and criminal trials and appeals, including criminal tax matters. Our lawyers have the skills and judgment needed to resolve criminal issues successfully and discreetly, often at the very early stages of an investigation. We also know how to take a matter all the way to trial and appeal; one such case — our successful representation of a doctor accused of misconduct with a patient — was the subject of a <a href=\"https://www.schlamstone.com/media/news/\">Wall Street Journal column</a> that was cited as a basis for a Pulitzer Prize.</p>', NULL, '2021-01-21 13:10:27', '2021-01-21 13:10:27'),
(3, 'Debt Recovery', '<p>We perform internal investigations for clients, and represent clients in governmental investigations and criminal trials and appeals, including criminal tax matters. Our lawyers have the skills and judgment needed to resolve criminal issues successfully and discreetly, often at the very early stages of an investigation. We also know how to take a matter all the way to trial and appeal; one such case — our successful representation of a doctor accused of misconduct with a patient — was the subject of a <a href=\"https://www.schlamstone.com/media/news/\">Wall Street Journal column</a> that was cited as a basis for a Pulitzer Prize. We perform internal investigations for clients, and represent clients in governmental investigations and criminal trials and appeals, including criminal tax matters. Our lawyers have the skills and judgment needed to resolve criminal issues successfully and discreetly, often at the very early stages of an investigation. We also know how to take a matter all the way to trial and appeal; one such case — our successful representation of a doctor accused of misconduct with a patient — was the subject of a <a href=\"https://www.schlamstone.com/media/news/\">Wall Street Journal column</a> that was cited as a basis for a Pulitzer Prize.</p>', NULL, '2021-01-21 13:12:04', '2021-01-21 13:12:04'),
(4, 'Judicial Review', '<p>Our corporate counseling and transactional practice complements our litigation and government investigations practices. Many of our matters involve corporate governance disputes in highly successful closely-held entities and family-owned businesses, where we are called upon to structure transactions and exercise our clients’ rights in very short periods of time to maximize a client’s negotiating leverage, save a business from financial catastrophe, or seize control of a business. In many instances, by helping our clients untie these Gordian knots, we are able to avoid lengthy and costly litigation altogether, or to gain significant strategic advantages in any subsequent litigation.</p><p><i>Defendant — who was also the defendant in Blackrock Balanced Capital Portfolio (FI) v U.S. Bank N.A. (165 AD3d 526 [1st Dept 2018]) — may not relitigate the issue that it raised therein and that was decided against it, namely, “Once performance of the demand requirement in the no-action clause is excused, performance of the entire provision is excused, including the requirement that demand be made by 25% of the certificate holders” (Blackrock, 165 AD3d at 528).</i></p><p>We represent closely-held companies in a number of industries, handling all aspects of their business, including real estate, employment, regulatory compliance and investor relations issues, and identification of litigation risks. We regularly advise clients regarding business combinations and the purchase and sale of companies; our skill and experience allow us to structure transactions that stand the test of time.</p><p>Because many of us have both litigation and transactional experience, we can help our clients develop a comprehensive strategy that involves structuring transactions to avoid litigation or to allow us favorably to resolve disputes that do arise.</p>', NULL, '2021-01-21 13:13:26', '2021-01-22 03:59:53'),
(5, 'Taxation', '<p>Our corporate counseling and transactional practice complements our litigation and government investigations practices. Many of our matters involve corporate governance disputes in highly successful closely-held entities and family-owned businesses, where we are called upon to structure transactions and exercise our clients’ rights in very short periods of time to maximize a client’s negotiating leverage, save a business from financial catastrophe, or seize control of a business. In many instances, by helping our clients untie these Gordian knots, we are able to avoid lengthy and costly litigation altogether, or to gain significant strategic advantages in any subsequent litigation.</p><p>We represent closely-held companies in a number of industries, handling all aspects of their business, including real estate, employment, regulatory compliance and investor relations issues, and identification of litigation risks. We regularly advise clients regarding business combinations and the purchase and sale of companies; our skill and experience allow us to structure transactions that stand the test of time.</p><p>Because many of us have both litigation and transactional experience, we can help our clients develop a comprehensive strategy that involves structuring transactions to avoid litigation or to allow us favorably to resolve disputes that do arise.</p>', NULL, '2021-01-21 13:14:18', '2021-01-21 13:14:18'),
(6, 'Appeals', '<p>Our corporate counseling and transactional practice complements our litigation and government investigations practices. Many of our matters involve corporate governance disputes in highly successful closely-held entities and family-owned businesses, where we are called upon to structure transactions and exercise our clients’ rights in very short periods of time to maximize a client’s negotiating leverage, save a business from financial catastrophe, or seize control of a business. In many instances, by helping our clients untie these Gordian knots, we are able to avoid lengthy and costly litigation altogether, or to gain significant strategic advantages in any subsequent litigation.</p><p>We represent closely-held companies in a number of industries, handling all aspects of their business, including real estate, employment, regulatory compliance and investor relations issues, and identification of litigation risks. We regularly advise clients regarding business combinations and the purchase and sale of companies; our skill and experience allow us to structure transactions that stand the test of time.</p><p>Because many of us have both litigation and transactional experience, we can help our clients develop a comprehensive strategy that involves structuring transactions to avoid litigation or to allow us favorably to resolve disputes that do arise.</p>', NULL, '2021-01-21 13:16:02', '2021-01-21 13:16:02'),
(7, 'Construction Dispute', '<p>Our corporate counseling and transactional practice complements our litigation and government investigations practices. Many of our matters involve corporate governance disputes in highly successful closely-held entities and family-owned businesses, where we are called upon to structure transactions and exercise our clients’ rights in very short periods of time to maximize a client’s negotiating leverage, save a business from financial catastrophe, or seize control of a business. In many instances, by helping our clients untie these Gordian knots, we are able to avoid lengthy and costly litigation altogether, or to gain significant strategic advantages in any subsequent litigation.</p><p>We represent closely-held companies in a number of industries, handling all aspects of their business, including real estate, employment, regulatory compliance and investor relations issues, and identification of litigation risks. We regularly advise clients regarding business combinations and the purchase and sale of companies; our skill and experience allow us to structure transactions that stand the test of time.</p><p>Because many of us have both litigation and transactional experience, we can help our clients develop a comprehensive strategy that involves structuring transactions to avoid litigation or to allow us favorably to resolve disputes that do arise.</p>', NULL, '2021-01-21 13:17:28', '2021-01-21 13:17:28'),
(8, 'Procurement', '<ul><li><a href=\"https://www.schlamstone.com/res-judicata-bars-claims-arising-during-prior-lawsuit/\">Res Judicata Bars Claims Arising During Prior Lawsuit </a>—October 30, 2013</li><li><a href=\"https://www.schlamstone.com/law-of-the-case-doctrine-bars-evidence-on-issue-decided-in-earlier-appeal/\">Law of the Case Doctrine Bars Evidence on Issue Decided in Earlier Appeal </a>—January 22, 2014</li><li><a href=\"https://www.schlamstone.com/complaint-not-barred-by-the-doctrine-of-res-judicata/\">Complaint Not Barred by the Doctrine of Res Judicata </a>—November 20, 2015</li><li><a href=\"https://www.schlamstone.com/court-of-appeals-grants-leave-to-appeal-in-case-regarding-application-of-res-judicata-to-unasserted-compulsory-counterclaims-in-prior-federal-action/\">Court of Appeals Grants Leave to Appeal in Case Regarding Application of Res Judicata to Unasserted Compulsory Counterclaims in Prior Federal Action </a>—December 1, 2016</li><li><a href=\"https://www.schlamstone.com/res-judicata-bars-plaintiff-from-relitigating-previously-litigated-claims/\">Res Judicata Bars Plaintiff From Relitigating Previously-Litigated Claims</a></li><li>Our corporate counseling and transactional practice complements our litigation and government investigations practices. Many of our matters involve corporate governance disputes in highly successful closely-held entities and family-owned businesses, where we are called upon to structure transactions and exercise our clients’ rights in very short periods of time to maximize a client’s negotiating leverage, save a business from financial catastrophe, or seize control of a business. In many instances, by helping our clients untie these Gordian knots, we are able to avoid lengthy and costly litigation altogether, or to gain significant strategic advantages in any subsequent litigation.</li></ul><p>We represent closely-held companies in a number of industries, handling all aspects of their business, including real estate, employment, regulatory compliance and investor relations issues, and identification of litigation risks. We regularly advise clients regarding business combinations and the purchase and sale of companies; our skill and experience allow us to structure transactions that stand the test of time.</p><p>Because many of us have both litigation and transactional experience, we can help our clients develop a comprehensive strategy that involves structuring transactions to avoid litigation or to allow us favorably to resolve disputes that do arise.</p>', NULL, '2021-01-21 13:18:10', '2021-01-22 04:02:17');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `descriptions`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Medical', 'The rights and responsibilities of medical professionals and their patients.', NULL, '2021-01-21 08:58:24', '2021-01-21 08:58:24'),
(2, 'Human rights', NULL, NULL, '2021-01-21 08:58:38', '2021-01-21 08:58:38'),
(3, 'Gender prejudices', NULL, NULL, '2021-01-21 08:59:26', '2021-01-21 08:59:26'),
(4, 'Elections', 'Nigeria elections appeals and judgments', NULL, '2021-01-21 09:00:35', '2021-01-21 09:00:35'),
(5, 'Precedence', NULL, NULL, '2021-01-21 09:08:00', '2021-01-21 09:08:00'),
(6, 'Education', NULL, NULL, '2021-01-21 09:08:01', '2021-01-21 09:08:34'),
(7, 'Insurance Law', NULL, NULL, '2021-01-21 10:23:47', '2021-01-21 10:23:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@aderelefirm.com', NULL, '$2y$10$BMO/4pRsaWWoZUP85uPpdeiJKARNi/r.9KcK2wHbnivTHfwhHNi4K', NULL, '2021-01-15 06:19:50', '2021-01-15 06:19:50'),
(2, 'Williams Developer', 'willydbd@yahoo.com', NULL, '$2y$10$qhlPYslAQtqQ1sXCo/y02e/OoIwLgacIECi7dOON/5VtZEal3rXwq', NULL, '2021-01-26 01:22:29', '2021-01-26 01:22:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_category_blog_id_foreign` (`blog_id`),
  ADD KEY `blog_category_category_id_foreign` (`category_id`);

--
-- Indexes for table `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_tag_blog_id_foreign` (`blog_id`),
  ADD KEY `blog_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `practices`
--
ALTER TABLE `practices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `blog_tag`
--
ALTER TABLE `blog_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `practices`
--
ALTER TABLE `practices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD CONSTRAINT `blog_category_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD CONSTRAINT `blog_tag_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`),
  ADD CONSTRAINT `blog_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
