import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class HousePage extends StatelessWidget {
  const HousePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FBFC),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Color(0xffC1D6F4),
                                  size: 14.0,
                                ),
                                Text(
                                  "Location",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12.0,
                                    color: Colors.black.withOpacity(0.45),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Purbalingga, Jawa Tengah",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.03),
                                  offset: const Offset(4, 4),
                                  blurRadius: 14.0),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Icon(
                                Icons.notifications,
                                color: Colors.black.withOpacity(0.25),
                              ),
                              Positioned(
                                top: 2,
                                right: 2,
                                child: Container(
                                  height: 9,
                                  width: 9,
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.white, width: 1.2),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.04),
                            blurRadius: 12,
                            offset: const Offset(4, 4),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Search",
                          hintStyle: GoogleFonts.montserrat(
                              color: Colors.black.withOpacity(0.4)),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.black.withOpacity(0.4),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Category",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          ItemMenuWidget(
                            text: "House",
                          ),
                          ItemMenuWidget(
                            text: "Hotel",
                          ),
                          ItemMenuWidget(
                            text: "Apartment",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Recomendation",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),
                    //Slider Lateral:
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          ItemCardRecomendation(
                              imageUrl:
                                  'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                          ItemCardRecomendation(
                              imageUrl:
                                  'https://img10.naventcdn.com/avisos/11/00/62/91/81/00/1200x1200/291708799.jpg'),
                          ItemCardRecomendation(
                              imageUrl:
                                  'https://img10.naventcdn.com/avisos/resize/11/00/57/39/16/34/1200x1200/250122323.jpg')
                        ],
                      ),
                    ),
                    //
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Top Rated",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    //Card Top Rated:
                    ItemTopRatedWidget(),
                    ItemTopRatedWidget(),
                    ItemTopRatedWidget(),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BotonNavBar(
                currentIndex: 1,
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
      //body end
      //Boton Navigation Bar:
    );
  }
}

class ItemTopRatedWidget extends StatelessWidget {
  const ItemTopRatedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 15,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Row(
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://img10.naventcdn.com/avisos/11/00/59/39/00/81/1200x1200/307516082.jpg',
                  width: 70,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Minimalist House",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 13.0,
                ),
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 18,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SizedBox(width: 6),
                  Text(
                    "4.0",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.40),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.black.withOpacity(0.3),
                    size: 16,
                  ),
                  Text(
                    "Padamara, Jawa Tengah",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.black.withOpacity(0.40)),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class BotonNavBar extends StatefulWidget {
  int currentIndex;
  Function? onTap;
  BotonNavBar({
    Key? key,
    required this.currentIndex,
    this.onTap,
  }) : super(key: key);

  @override
  State<BotonNavBar> createState() => _BotonNavBarState();
}

class _BotonNavBarState extends State<BotonNavBar> {
  @override
  Widget build(BuildContext context) {
    List<IconData> listOfIcons = [
      Icons.home_rounded,
      Icons.shopping_cart,
      Icons.bookmark_rounded,
      Icons.person_rounded,
    ];
    return Container(
        //height: 50,

        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 14),
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.35),
              blurRadius: 20,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: listOfIcons.map(((itemIcom) {
              return InkWell(
                onTap: () {
                  widget.onTap;
                  setState(() {
                    HapticFeedback.lightImpact();
                    widget.currentIndex = listOfIcons.indexOf(itemIcom);
                  });
                },
                child: Icon(itemIcom,
                    color: listOfIcons.indexOf(itemIcom) == widget.currentIndex
                        ? Colors.white
                        : Colors.white54),
              );
            })).toList()));
  }
}

class ItemCardRecomendation extends StatelessWidget {
  String imageUrl;
  ItemCardRecomendation({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      padding: const EdgeInsets.all(9.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            offset: const Offset(4, 4),
            blurRadius: 12.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14.0),
            child: Image.network(
              imageUrl,
              width: 220,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Minimalist House",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0,
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 14.0,
                    color: Color(0xffFBBF12),
                  ),
                  Text(
                    "4.0",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("\$743",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF7CACF0))),
                        Text("/Month",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black.withOpacity(0.3),
                            )),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.black.withOpacity(0.3),
                          size: 16,
                        ),
                        Expanded(
                          child: Text(
                            "Padamara, Jawa Tengah",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.3)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.bookmark_rounded,
                color: Colors.black.withOpacity(0.3),
                size: 24,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemMenuWidget extends StatelessWidget {
  String text;
  ItemMenuWidget({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 10,
      ),
      margin: const EdgeInsets.only(right: 14.0),
      decoration: BoxDecoration(
        color: Color(0xffEFF4FD),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/building.png',
            height: 22.0,
          ),
          const SizedBox(
            width: 8.0,
          ),
          Text(
            text,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
