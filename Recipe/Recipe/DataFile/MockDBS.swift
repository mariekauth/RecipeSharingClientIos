//
//  MockDBS.swift
//  Recipe
//
//  Created by Leng Trang on 12/5/20.
//

import Foundation

class MockDBS {
    static let shared = MockDBS()
    
    var users: [RecipeBook]? = [RecipeBook]()
    
    var userLogged: [RecipeBook]? = [RecipeBook]()
    
    func createMockDBS(){
        // Marie Kauth
        
        let marieCheeseCake = Recipe(
            title: "My Cheesecake",
            description: nil,
            instruction: "In medium bowl, beat cream cheese until fluffy. Add condensed milk; mix thoroughly. Stir in lemon juice and vanilla. Pour into crust. Chill 2 hours. top with cherry pie filling before serving. Refrigerate. Lid can be used to cover pie and store.",
            ingredients: [
                "1 (6 oz) Graham Cracker Crust",
                "1 (8 0z) Package Cream cheese (softened)",
                "1 (14 oz) can sweetened condensed milk",
                "1/3 cup reconstituted lemon juice",
                "1 (21 oz) can cherry pie filling chilled"
            ]
        )
        
        let marieThumbprintCookies = Recipe (
            title: "Thumbprint Cookies",
            description: nil,
            instruction: "Roll into balls. Dip in slightly beaten egg white. Roll in finely chopped nuts./r/rBake 12 minutes 375º",
            ingredients: [
                "1/2 cup shortening (half butter)",
                "1/4 cup brown sugar",
                "1/2 teaspoon vanilla",
                "1/4 teaspoon salt",
                "1 egg yolk",
                "1/4 teaspoon salt"
            ]
        )
        
        let marieBake = RecipeBook(
            title: "Bake",
            user: UserConstant.marie,
            openToPublic: true,
            recipe: [marieCheeseCake, marieThumbprintCookies]
        )
        
        let marieSloppieJoe = Recipe(
            title: "Sloppy Joe",
            description: nil,
            instruction: nil,
            ingredients: [
                "1 onion",
                "1 tablespoon brown sugar",
                "1 tablespoon mustard",
                "1 tablespoon Worcestershire sauce (can substitute soy sauce)",
                "1/2 cup water",
                "1/4 cup ketchup",
                "1/2 cup tomato soup",
                "1 pound hamburger"
            ]
        )
        
        let marieDinner = RecipeBook(
            title: "Dinner",
            user: UserConstant.marie,
            openToPublic: false,
            recipe: [marieSloppieJoe]
        )
        
        users?.append(marieBake)
        users?.append(marieDinner)
    }
}

struct UserConstant {
    static let marie = "Marie"
    static let patrick = "Patrick"
    static let leng = "Leng"
}

/*
 Mexican Wedding Cakes

 1 cup butter
 2 cups flour
 1 teaspoon vanilla
 1/2 cup powdered sugar
 1/4 teaspoon salt


 Cream butter. Add powdered sugar and cream until smooth. Add flour, salt, and vanilla (mixture is stiff). Pinch off small pieces of dough. Place on ungreased cookie sheet. Bake at 400º for about 12 minutes. Roll cookies in powdered sugar immediately after removing from oven. Makes about 4 dozen.
 
 
 
 Sloppy Joe

 1 onion
 1 tablespoon brown sugar
 1 tablespoon mustard
 1 tablespoon Worcestershire sauce (can substitute soy sauce)
 1/2 cup water
 1/4 cup ketchup
 1/2 cup tomato soup
 1 pound hamburger
 
 -------------------------------------------------------------
 
 [Chocolate Cake and Frosting]
 Salad Dressing Cup Cakes or Cake

 1 cup sugar
 1 salad dressing
 1 cup water
 2 teaspoon baking soda
 1/4 cup cocoa
 2 cup flour
 3 teaspoon vanilla


 Bake at 350º for 30 minutes (cup cakes)
 Bake at 350º for 45 minutes (cake)

 Topping

 1 stick or 1/2 cup margarine
 8 oz cream cheese
 1 1/2 cup powdered sugar
 1 tablespoon vanilla
 
 -------------------------------------------------------------
 
 Tator Tot Casserole

 1 lb Ground Beef
 3 cans Cream of mushroom soup
 2 can French Style Green Beans
 1 bag Tator Tots
 1 can French's Dried Onions
 1 lb Shredded Cheese (Colby works best)

 Preheat oven to 305°

 Fry your hamburger. Drain it well. Mix the ground beef, cream of mushroom soup, and green beans in the bottom of a casserole dish. Put a single layer of tator tots over the dish. Make sure you cover all of it. Bake for 35 minutes - 1 hour (Generally follow the instructions on the tator tots). At the last 5-10 minutes of cooking add your dried onions and cover them with cheese. Bake until the cheese is melted. Let sit for 5 to 10 minutes to thicken. (If you do not wait it will run and not come out neatly. Besides it is too hot to eat anyway).

 *Note: Always put the onions on "UNDER" the cheese or they will burn.
 
 -------------------------------------------------------------
 
 Pork Chops

 1 pkg Pork Chops/Beef
 1 Chopped Onion
 Flour
 Salt
 Pepper
 Cooking Oil or Spray
 Bullion (If you have it)
 Water

 Preheat Oven to 350°

 Put the flour in a shallow dish and salt and pepper to taste. Rinse the pork chops under running water. Some people prefer to pat dry after. Dip Pork Chops in flour. Brown Pork Chops in a hot skillet (light greased so they do not stick). Place Pork Chops in baking pan (lightly greased so they do not stick). Place sliced onion on top of the pork chops. Cover them with water or bullion, just enough to cover the meat. (You can add about 4 bullion cubes if you have them).

 This recipe makes the gravy while you are cooking your pork chops. I personally like to serve my gravy over mashed potatoes.

 Bake at 350° for about 2 hours, when meat is tender it is done.

 *Note: (It tastes even better when you cook Pork and Beef together)
 
 -------------------------------------------------------------
 
 Lasagna

 1 (12 oz) pkg Lasagna (12 noodles)
 30 oz Ricotta Cheese
 2 Cups Shredded Mozzarella Cheese, divided
 1/2 cup fresh grated Parmesan cheese, divided
 2 eggs, slightly beaten
 1/4 cup fresh chopped parsley
 1 tsp dried basil
 54 oz tomotaoe sauce
 1 cup water
 1 lb ground beef or bulk Italian sausage, cooked and drained

 Preheat oven to 375°

 In medium bowl, combine ricotta, 1 cup mozzarella cheese, 1/4 cup Parmesan cheese, eggs, parsley and basil. Mix well. In another medium bowl, combine tomato sauce, water and browned meat; mix well. In 9" x 13" pan, spread 1 1/2 cups of meat sauce. Place 1/3 of the Lasanga noodles (4) over sauce. Spread 1/2 of the cheese mixture over Lasagna; top with 1/2 of the meat sauce. Repeat layering once. Top with remaining lasagna, then sauce. Spring with remaining mozzarella and Parmesan cheese. Cover the lasagna tightly with foil. Bake for 45 to 50 minutes. Let stand for 10 minutes sealed in the foil before cutting and serving. Makes 9 to 12 servings.
 
 -------------------------------------------------------------
 
 Cake Pops

 Cake pops are a festive treat for any holiday. There are infinite ways to shape and decorate them for any occasion.

 Cake

 Make a 9x13 inch cake
 Let it cool completely
 Vanilla Butter Cream

 1 lb butter
 2 lb powdered sugar (3 3/4 cups unsifted powdered sugar = 1 lb)
 1 Tbsp vanilla extract
 1 Tbsp milk
 whip butter, add sugar slowly, add vanilla and milk, beat until smooth
 Cake Balls

 Combine cake in mixer (or by hand) with butter cream frosting, just enough so that cake will hold a ball shape when rolled (approx. 2/3 cup).

 Portion mixture into 1oz portions using 1oz scoop

 Using hands roll them into small little balls, make sure they are round and smooth with no cracks. If there are cracks add more butter cream frosting.

 Chill cake balls in refrigerator for 20 minutes prior to dipping.
 
 -------------------------------------------------------------
 
 Peanut Butter Cookies

 1 cup butter
 1 cup peanut butter
 1 cup sugar
 1 cup brown sugar
 2 eggs
 2 1/2 cups all-purpose flour
 1/2 teaspoon salt
 1 teaspoon baking powder
 1 1/2 teaspoon baking soda


 Cream together butter, peanut butter and sugars. Beat in eggs.

 In a separate bowl, sift together flour, baking powder, baking soda, and salt. Stir into batter. Put batter in refrigerator for 1 hour.

 Roll into balls and put on baking sheets. Flatten each ball with a fork, making a criss-cross pattern. Bake in a preheated 375º oven for about 10 minutes or until cookies begin to brown. Do not overbake.

 Bake at 375º for 10 minutes
 
 -------------------------------------------------------------
 
 Cabbage Rolls

 1 Head Cabbage
 2 lbs Hamburger (Groud Sirloin or Groud Round)
 1 Cup Rice (Minute Rice is Ok)
 2 Eggs
 1 Onion (Finely Chopped)
 Squire of Ketchup
 Salt
 Pepper
 1 Tea Spoon Sugar (Removes Bitterness From Cabbage)
 2 Large Cans Tomato Juice (Campbell's)

 Mix Hamburger, Rice, Eggs, Onion, Ketchup, Salt, Pepper, and Sugar

 Simmer Cabbage Upside Down, holding by the stem. As leaves soften cut away from stem using a sharp knife and remove from pan. Lay them on a cookie sheet.

 Roll meat mix in loosely in cabbage leaves, folding both sides of leaves in as you roll. Put end of roll down, or hold with toothpicks.

 Warning: Rolling tightly will cause hard rock like balls, do NOT do it.

 Put in Roasting Pan and pour tomato juice over the top

 Bake 3 hours at 350°
 */
