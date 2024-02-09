import 'package:resume/presentation/pages/page_3_career/text/career_text.dart';

class CareerTextList {
  static List<CareerText> carrerTextInfo = [
//QE
    const CareerText(
        value: 1,
        title: 'Senior Flight Dispatcher.',
        subtitle: 'Qatar Executive (Actual)',
        bodytitle: 'Key Achievements:\n',
        achievementtitle: [
          '\n • Director and developer of the Charter Flight Feasibility Tool:\n',
          ' • Project Manager and developer of the IOC Flight Logistics, and Ground Services Training Manual:\n',
          ' • RCP flight plan Trainer and USA Customs/Immigration process:\n',
          ' • Project Manager FIFA 2018 Flight Logistics Planning:\n',
        ],
        achievementtext: [
          ' - Increased the information accuracy by 95%.\n - Decreased workload and reply time frame to less than 20 minutes and Dispatcher Staff workload by 50%. \n\n',
          ' - Developed a comprehensive and interactive training manual to support the smooth flight and ground services coordination for IOC.\n\n',
          ' - Reduced 50% the use of technical stops by the use of the technic.\n - Improve knowledge and time response on USA Customs processes.\n\n',
          ' - Accomplished 95% schedule accuracy as per VVIP schedule requirements.'
        ]),
//FLYMEX
    const CareerText(
        value: 2,
        title: 'Duty Manager.',
        subtitle: 'FlyMex (2014-2016)',
        bodytitle: 'Key Achievements:\n',
        achievementtitle: [
          '\n • Project Management and Trainer of North Atlantic Operations implementation for OCC:\n',
          ' • Established the flight routes control system database:\n',
          ' • Support on the IOSA and Mexico CAA annual audits for OCC.',
        ],
        achievementtext: [
          ' - Results: 0% flight delay and rerouting due to errors during the planning stage. \n\n',
          ' - Decreased the flight planning workload by 35% and re-loading flight plans by 50%\n\n',
          ' - Obtain a zero mayor and minor non-conformance.'
        ]),
//MENZIES
    const CareerText(
      value: 3,
      title: 'GHS Monterrey Airport Manager.',
      subtitle: 'Menzies Aviation (2013-2014)',
      bodytitle: 'Key Achievements:\n',
      achievementtitle: [
        '\n • Business process reengineering for Monterrey Airport GHS:\n'
      ],
      achievementtext: [
        ' - Leading a team of 50 Ground Staff and 3 Regional Airport Managers, spearheaded a cultural shift prioritizing teamwork, communication, and excellence. This resulted in a remarkable 0% GHS delay rate during the challenging 2013 winter season. These initiatives yielded a improvement in efficiency and customer satisfaction.\n\n'
      ],
    ),
//AEROMEXICO
    const CareerText(
      //    expandedInput: true,
      value: 4,
      title: 'Flight Crew Training Coordinator.',
      subtitle: 'Aeromexico Connect (2011-2013)',
      bodytitle: 'Key Achievements:\n',
      achievementtitle: [
        '\n • Project Manager for the implementation of the full flight simulator training abroad program:\n'
      ],
      achievementtext: [
        ' - Maximizing training capacity, within 4 different training centres worldwide.\n - 20% cost reimbursement due good implement of business agreement policies.\n\n'
      ],
    ),
//MEXICANA
    const CareerText(
      value: 5,
      title: 'Flight Dispatcher Supervisor.',
      subtitle: 'Mexicana de Aviacion (2003-2010)',
      bodytitle: 'Key Achievements:\n',
      achievementtitle: [
        '\n • Project Manager and Trainer on Amadeus W&B and EDS Flight Planning software implementation:\n'
      ],
      achievementtext: [
        ' - Maximized user satisfaction.\n - Achieved 0% delay due to staff/trainees error on the initial stage.\n\n'
      ],
    ),
  ];
}
