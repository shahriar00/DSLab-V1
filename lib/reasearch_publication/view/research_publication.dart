import 'package:drop_shadow/drop_shadow.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:dslab/reasearch_publication/widgets/custom_design.dart';
import 'package:dslab/research_area/widgets/custom_design.dart';
import 'package:flutter/material.dart';

class ResearchPublication extends StatefulWidget {
  const ResearchPublication({super.key});

  @override
  State<ResearchPublication> createState() => _ResearchPublicationState();
}

class _ResearchPublicationState extends State<ResearchPublication> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "images/logo2.png",
                    scale: 8,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "images/diu.png",
                        scale: 8,
                      ),
                      Image.asset(
                        "images/notification.gif",
                        scale: 2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        
        child: Container(
          color: Color(0xFF204895),
          child: Column(
            children: [
              ClipPath(
                clipper: ResearchPublicationCustomDesign(),
                child: Container(
                  height: 200,
                  width: deviceWidth,
                  color: Colors.white,
                  child: const SizedBox(
                    height: 150,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30, top: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Research Publication",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF238E7B),
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0, // shadow blur
                                  color: Colors.grey, // shadow color
                                  offset: Offset(2.0,
                                      2.0), // how much shadow will be shown
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              DataDrivenApproch(),

              //machine learning ...........

              MachineLearning(),

              //cryptocrurrency related..............

              Cryptocurrecy(),

              //Footer ..................
              //
              Footer()
            ],
          ),
        ),
      ),
    );
  }

  Widget ResearchTitle() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 35, top: 35),
          child: Text(
            "Research Publication",
            style: TextStyle(
              shadows: [
                Shadow(
                  blurRadius: 10.0, // shadow blur
                  color: Colors.grey, // shadow color
                  offset: Offset(2.0, 2.0), // how much shadow will be shown
                ),
              ],
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color(0xFF168773),
            ),
          ),
        ),
      ],
    );
  }

  Widget Footer() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            "images/logo2.png",
            scale: 6,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "We are a team of out-of-the-box thinkers, with deep expertise in analytics. Our research aims to make sense of large amounts of data.",
            style: TextStyle(fontSize: 18, color: Colors.white),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Image.asset(
                  "images/facebook.png",
                  scale: 2,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Image.asset(
                "images/web.png",
                scale: 2,
              ),
              const SizedBox(
                width: 8,
              ),
              Image.asset(
                "images/youtube.png",
                scale: 2,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Services",
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Data Science\nMachine Learning\nDeep Learning\nBig Data",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          SizedBox(
            height: 18,
          ),
          const Text(
            "Community",
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Our Service\nDocumentation\nWhat you do?",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(
            height: 18,
          ),
          const Text(
            "Contact Us",
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Daffodil Smart City,Ashulia,Dhaka\nEmail:arman.swe@diu.edu.bd\nPhone:+880-167338289",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const Divider(
            color: Colors.black,
          ),
          const Text(
            "© 2022 All Rights Reserved By\nDaffodilInternational University",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 10.0, // shadow blur
                  color: Color.fromARGB(255, 18, 18, 18), // shadow color
                  offset: Offset(4.0, 4.0), // how much shadow will be shown
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget DataDrivenApproch() {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "A Data Driven Approach to\nForecasting BangladeshNext\nGeneration Economy",
            style: TextStyle(
              color: Color(0xFF168773),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(15) // Adjust the radius as needed
                  ),
              child: Image.asset("images/drivenstate.jpg")),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "The issues of GDP have gotten the most worried among macroeconomic factors and information on GDP is viewed as the significant file for evaluating the public financial turn of events and for making a decision about the working status of the macro economy in general. It is crucial to Forecast microeconomic variables in the economic terminology. The main macroeconomic factors to gauge are the Gross Domestic Product (GDP), swelling and joblessness. As a total proportion of absolute financial creation for a country, GDP is one of the essential markers used to gauge the nation's economy. Since significant monetary and political choices depend on conjectures of these macroeconomic factors, it is basic that they are just about as solid and exact as could be expected. Erroneous figures might bring about destabilizing strategies and a more unstable business cycle. GDP is quite possibly the main pointers of public financial exercises for a nation.",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 18, color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget MachineLearning() {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "A Machine Learning Approach\nfor Sentiment Analysis of\nCustomer Satisfaction of\nBangladeshi Delivery Services",
            style: TextStyle(
              color: Color(0xFF168773),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(15) // Adjust the radius as needed
                  ),
              child: Image.asset("images/ml.png")),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "For preventing counterfeiting and double-spending the encrypted digital or virtual money is used, which is called Cryptocurrencies. They are applied online exclusively. Cryptocurrency like bitcoin used peer to peer connection. In real world, these cryptocurrencies have no physical existence. They have no visible presence. There has no authority of the government over cryptocurrency. Functioning cryptocurrency relies on a technology called a blockchain. This blockchain was founded to relieve the problem of double-spending and also the interrupt in the centralized parties; control in the assets transaction. It is Bitcoins most significant invention. For keeping track of all economic and financial transactions the blockchain is used. This blockchain uses a cluster of computers. It can be said simply that, this technology is so strong that it can keep records permanently of transactions of business, assets, financial data, contract conversion, and property which is intellectual.",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 18, color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget Cryptocurrecy() {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Cryptocurrency Market Research\nusing Machine Learning\nApproach",
            style: TextStyle(
              color: Color(0xFF168773),
              fontSize: 29,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(15) // Adjust the radius as needed
                  ),
              child: Image.asset("images/crypto.png")),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Bangladesh has a large population which is causing the delivery system growing up day by day. Therefore, some companies who provide these delivery services usually called “Currier Service” are growing gradually. In this paper, we choose the top delivery service company of Bangladesh and analyzed customers sentiment based on reviews and comments which is collected from their social media pages. We collected data of customers comments from the “Sundorban Currier Services”, “Redx Currier Services” and “Pathao Delivery System” official social media page are verified posts. In this sentiment review, we have used Natural Language Processing (NLP) in Bangla to categorize those reviews using multiple machine learning models. In those models, we have tried to discover the number of negative and positive reviews or comments in real- life social media platforms and predicted the reviews that are negative or positive using the Unigram, Bigram, and Trigram methods.We have found that the Bigram feature is the best for this analysis because it has the highest accuracy of 90.72% and according to that the highest F1 score is 91.26. Using the Bangla NLP approach, the machine learning models are categorized in negative and positive reviews with the sentiment analysis method.",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 18, color: Colors.white),
          )
        ],
      ),
    );
  }
}
