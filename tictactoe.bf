// Drawing the board
{>258}[-]+
 >>   [-]+ {<260}
{>282}[-]+
 >    [-]+
 >    [-]+
 >    [-]+
 >    [-]+ {<286}
{>308}[-]+
 >>   [-]+ {<310}
{>332}[-]+
 >    [-]+
 >    [-]+
 >    [-]+
 >    [-]+{<336}
{>358}[-]+
 >>   [-]+{<360}


// Checking hover on top left square
{>257}          // Top left square
{>400}          // Get far away from anything else

[-]+
>[-]{+10}       // Set desired mouse X (10)
>[-]{+6},       // Get mouse X (id 6)
[ <- >- ]       // 'Compare' both values

< [               // Mouse X is not right
    <[-]>[-]      // Clean up
]
< [               // Mouse X is right
    >[-]<[-]      // Clean up

    +
    >[-]{+7}      // Set desired mouse Y (7)
    >[-]{+7},     // Get mouse Y (id 7)
    [ <- >- ]     // 'Compare' both values

    < [               // Mouse Y is not right
        <[-]>[-]      // Clean up
    ]
    < [               // Mouse Y is right
        >[-]<[-]      // Clean up

        +
        >[-]+         // Set desired mouse click (1)
        >[-]{+8},     // Get mouse click (id 8)
        [ <- >- ]     // 'Compare' both values

        < [             // Mouse is not clicking
            <[-]>[-]    // Clean up
        ]
        < [             // Mouse is clicking
            >[-]<[-]    // Clean up

            +           // k0 (temporary)
            > [-]       // k1 (temporary)
            <{<400} [   // y: Cell has a color already (do nothing)
                // Copy y to k1
                k0 {>400}- 
                 y {<400} [
                    k1 {>400}>+
                     y {<400}<-
                 ]
            ]
            // Copy k1 to y
            k1 {>400}> [
                y {<400}<+
               k1 {>400}>-
            ]
            k0 < [     // y: Cell has no color

                {<400}      // Go back to map
                {<257}      // Go to cell #0
                {>618}      // Go to end of map

                > [-]+      // t0 (temporary)
                > [-]       // t1 (temporary)
                > [         // x: Current player is not 0

                    <<<       // Reset position (t0 / t1 / x)
                    {<618}    // Go back to cell #0
                    {>257}    // Go to cell #257 (top left square)
                    [-]{+6}   // Set cell color to blue
                    {<257}    // Go back to cell #0
                    {>618}    // Go to t0
                    >>>[-]    // Go to x and reset it

                    // Copy x to t1
                    t0 <<-  x >> [ t1 <+  x >- ]
                ]
                // Copy t1 to x
                t1 < [ x >+  t1 <- ]
                t0 < [     // x: Current player is 0

                    {<618}<   // Go back to cell #0
                    {>257}    // Go to cell #257 (top left square)
                    [-]{+4}   // Set cell color to red
                    {<257}    // Go back to cell #0
                    {>618}>   // Go to t0
                    >>+<<     // Current player is now 1

                    t0-
                ]

                {>400}
                k0[-]
            ]
        ]
    ]
]
{<400}
{<257}


// Checking hover on left square
{>259}          // Left square
{>400}          // Get far away from anything else

[-]+
>[-]{+10}       // Set desired mouse X (10)
>[-]{+6},       // Get mouse X (id 6)
[ <- >- ]       // 'Compare' both values

< [               // Mouse X is not right
    <[-]>[-]      // Clean up
]
< [               // Mouse X is right
    >[-]<[-]      // Clean up

    +
    >[-]{+9}      // Set desired mouse Y (9)
    >[-]{+7},     // Get mouse Y (id 7)
    [ <- >- ]     // 'Compare' both values

    < [               // Mouse Y is not right
        <[-]>[-]      // Clean up
    ]
    < [               // Mouse Y is right
        >[-]<[-]      // Clean up

        +
        >[-]+         // Set desired mouse click (1)
        >[-]{+8},     // Get mouse click (id 8)
        [ <- >- ]     // 'Compare' both values

        < [             // Mouse is not clicking
            <[-]>[-]    // Clean up
        ]
        < [             // Mouse is clicking
            >[-]<[-]    // Clean up

            +           // k0 (temporary)
            > [-]       // k1 (temporary)
            <{<400} [   // y: Cell has a color already (do nothing)
                // Copy y to k1
                k0 {>400}- 
                 y {<400} [
                    k1 {>400}>+
                     y {<400}<-
                 ]
            ]
            // Copy k1 to y
            k1 {>400}> [
                y {<400}<+
               k1 {>400}>-
            ]
            k0 < [     // y: Cell has no color
                {<400}      // Go back to map
                {<259}      // Go to cell #0
                {>618}      // Go to end of map

                > [-]+      // t0 (temporary)
                > [-]       // t1 (temporary)
                > [         // x: Current player is not 0

                    <<<       // Reset position (t0 / t1 / x)
                    {<618}    // Go back to cell #0
                    {>259}    // Go to cell #259 (left square)
                    [-]{+6}   // Set cell color to blue
                    {<259}    // Go back to cell #0
                    {>618}    // Go to t0
                    >>>[-]    // Go to x and reset it

                    // Copy x to t1
                    t0 <<-  x >> [ t1 <+  x >- ]
                ]
                // Copy t1 to x
                t1 < [ x >+  t1 <- ]
                t0 < [     // x: Current player is 0

                    {<618}<   // Go back to cell #0
                    {>259}    // Go to cell #259 (left square)
                    [-]{+4}   // Set cell color to red
                    {<259}    // Go back to cell #0
                    {>618}>   // Go to t0
                    >>+<<     // Current player is now 1

                    t0-
                ]

                {>400}
                k0[-]
            ]
        ]
    ]
]
{<400}
{<259}


// Checking hover on bottom left square
{>261}          // Bottom left square
{>400}          // Get far away from anything else

[-]+
>[-]{+10}       // Set desired mouse X (10)
>[-]{+6},       // Get mouse X (id 6)
[ <- >- ]       // 'Compare' both values

< [               // Mouse X is not right
    <[-]>[-]      // Clean up
]
< [               // Mouse X is right
    >[-]<[-]      // Clean up

    +
    >[-]{+11}     // Set desired mouse Y (11)
    >[-]{+7},     // Get mouse Y (id 7)
    [ <- >- ]     // 'Compare' both values

    < [               // Mouse Y is not right
        <[-]>[-]      // Clean up
    ]
    < [               // Mouse Y is right
        >[-]<[-]      // Clean up

        +
        >[-]+         // Set desired mouse click (1)
        >[-]{+8},     // Get mouse click (id 8)
        [ <- >- ]     // 'Compare' both values

        < [             // Mouse is not clicking
            <[-]>[-]    // Clean up
        ]
        < [             // Mouse is clicking
            >[-]<[-]    // Clean up

            +           // k0 (temporary)
            > [-]       // k1 (temporary)
            <{<400} [   // y: Cell has a color already (do nothing)
                // Copy y to k1
                k0 {>400}- 
                 y {<400} [
                    k1 {>400}>+
                     y {<400}<-
                 ]
            ]
            // Copy k1 to y
            k1 {>400}> [
                y {<400}<+
               k1 {>400}>-
            ]
            k0 < [     // y: Cell has no color
                {<400}      // Go back to map
                {<261}      // Go to cell #0
                {>618}      // Go to end of map

                > [-]+      // t0 (temporary)
                > [-]       // t1 (temporary)
                > [         // x: Current player is not 0

                    <<<       // Reset position (t0 / t1 / x)
                    {<618}    // Go back to cell #0
                    {>261}    // Go to cell #261 (bottom left square)
                    [-]{+6}   // Set cell color to blue
                    {<261}    // Go back to cell #0
                    {>618}    // Go to t0
                    >>>[-]    // Go to x and reset it

                    // Copy x to t1
                    t0 <<-  x >> [ t1 <+  x >- ]
                ]
                // Copy t1 to x
                t1 < [ x >+  t1 <- ]
                t0 < [     // x: Current player is 0

                    {<618}<   // Go back to cell #0
                    {>261}    // Go to cell #261 (bottom left square)
                    [-]{+4}   // Set cell color to red
                    {<261}    // Go back to cell #0
                    {>618}>   // Go to t0
                    >>+<<     // Current player is now 1

                    t0-
                ]

                {>400}
                k0[-]
            ]
        ]
    ]
]
{<400}
{<261}


// Checking hover on top middle square
{>307}          // Top middle square
{>400}          // Get far away from anything else

[-]+
>[-]{+12}       // Set desired mouse X (12)
>[-]{+6},       // Get mouse X (id 6)
[ <- >- ]       // 'Compare' both values

< [               // Mouse X is not right
    <[-]>[-]      // Clean up
]
< [               // Mouse X is right
    >[-]<[-]      // Clean up

    +
    >[-]{+7}      // Set desired mouse Y (7)
    >[-]{+7},     // Get mouse Y (id 7)
    [ <- >- ]     // 'Compare' both values

    < [               // Mouse Y is not right
        <[-]>[-]      // Clean up
    ]
    < [               // Mouse Y is right
        >[-]<[-]      // Clean up

        +
        >[-]+         // Set desired mouse click (1)
        >[-]{+8},     // Get mouse click (id 8)
        [ <- >- ]     // 'Compare' both values

        < [             // Mouse is not clicking
            <[-]>[-]    // Clean up
        ]
        < [             // Mouse is clicking
            >[-]<[-]    // Clean up

            +           // k0 (temporary)
            > [-]       // k1 (temporary)
            <{<400} [   // y: Cell has a color already (do nothing)
                // Copy y to k1
                k0 {>400}- 
                 y {<400} [
                    k1 {>400}>+
                     y {<400}<-
                 ]
            ]
            // Copy k1 to y
            k1 {>400}> [
                y {<400}<+
               k1 {>400}>-
            ]
            k0 < [     // y: Cell has no color
                {<400}      // Go back to map
                {<307}      // Go to cell #0
                {>618}      // Go to end of map

                > [-]+      // t0 (temporary)
                > [-]       // t1 (temporary)
                > [         // x: Current player is not 0

                    <<<       // Reset position (t0 / t1 / x)
                    {<618}    // Go back to cell #0
                    {>307}    // Go to cell #307 (top middle square)
                    [-]{+6}   // Set cell color to blue
                    {<307}    // Go back to cell #0
                    {>618}    // Go to t0
                    >>>[-]    // Go to x and reset it

                    // Copy x to t1
                    t0 <<-  x >> [ t1 <+  x >- ]
                ]
                // Copy t1 to x
                t1 < [ x >+  t1 <- ]
                t0 < [     // x: Current player is 0

                    {<618}<   // Go back to cell #0
                    {>307}    // Go to cell #307 (top middle square)
                    [-]{+4}   // Set cell color to red
                    {<307}    // Go back to cell #0
                    {>618}>   // Go to t0
                    >>+<<     // Current player is now 1

                    t0-
                ]

                {>400}
                k0[-]
            ]
        ]
    ]
]
{<400}
{<307}


// Checking hover on middle square
{>309}          // Middle square
{>400}          // Get far away from anything else

[-]+
>[-]{+12}       // Set desired mouse X (12)
>[-]{+6},       // Get mouse X (id 6)
[ <- >- ]       // 'Compare' both values

< [               // Mouse X is not right
    <[-]>[-]      // Clean up
]
< [               // Mouse X is right
    >[-]<[-]      // Clean up

    +
    >[-]{+9}      // Set desired mouse Y (9)
    >[-]{+7},     // Get mouse Y (id 7)
    [ <- >- ]     // 'Compare' both values

    < [               // Mouse Y is not right
        <[-]>[-]      // Clean up
    ]
    < [               // Mouse Y is right
        >[-]<[-]      // Clean up

        +
        >[-]+         // Set desired mouse click (1)
        >[-]{+8},     // Get mouse click (id 8)
        [ <- >- ]     // 'Compare' both values

        < [             // Mouse is not clicking
            <[-]>[-]    // Clean up
        ]
        < [             // Mouse is clicking
            >[-]<[-]    // Clean up

            +           // k0 (temporary)
            > [-]       // k1 (temporary)
            <{<400} [   // y: Cell has a color already (do nothing)
                // Copy y to k1
                k0 {>400}- 
                 y {<400} [
                    k1 {>400}>+
                     y {<400}<-
                 ]
            ]
            // Copy k1 to y
            k1 {>400}> [
                y {<400}<+
               k1 {>400}>-
            ]
            k0 < [     // y: Cell has no color
                {<400}      // Go back to map
                {<309}      // Go to cell #0
                {>618}      // Go to end of map

                > [-]+      // t0 (temporary)
                > [-]       // t1 (temporary)
                > [         // x: Current player is not 0

                    <<<       // Reset position (t0 / t1 / x)
                    {<618}    // Go back to cell #0
                    {>309}    // Go to cell #309 (middle square)
                    [-]{+6}   // Set cell color to blue
                    {<309}    // Go back to cell #0
                    {>618}    // Go to t0
                    >>>[-]    // Go to x and reset it

                    // Copy x to t1
                    t0 <<-  x >> [ t1 <+  x >- ]
                ]
                // Copy t1 to x
                t1 < [ x >+  t1 <- ]
                t0 < [     // x: Current player is 0

                    {<618}<   // Go back to cell #0
                    {>309}    // Go to cell #309 (middle square)
                    [-]{+4}   // Set cell color to red
                    {<309}    // Go back to cell #0
                    {>618}>   // Go to t0
                    >>+<<     // Current player is now 1

                    t0-
                ]

                {>400}
                k0[-]
            ]
        ]
    ]
]
{<400}
{<309}


// Checking hover on bottom middle square
{>311}          // Bottom middle square
{>400}          // Get far away from anything else

[-]+
>[-]{+12}       // Set desired mouse X (12)
>[-]{+6},       // Get mouse X (id 6)
[ <- >- ]       // 'Compare' both values

< [               // Mouse X is not right
    <[-]>[-]      // Clean up
]
< [               // Mouse X is right
    >[-]<[-]      // Clean up

    +
    >[-]{+11}     // Set desired mouse Y (11)
    >[-]{+7},     // Get mouse Y (id 7)
    [ <- >- ]     // 'Compare' both values

    < [               // Mouse Y is not right
        <[-]>[-]      // Clean up
    ]
    < [               // Mouse Y is right
        >[-]<[-]      // Clean up

        +
        >[-]+         // Set desired mouse click (1)
        >[-]{+8},     // Get mouse click (id 8)
        [ <- >- ]     // 'Compare' both values

        < [             // Mouse is not clicking
            <[-]>[-]    // Clean up
        ]
        < [             // Mouse is clicking
            >[-]<[-]    // Clean up

            +           // k0 (temporary)
            > [-]       // k1 (temporary)
            <{<400} [   // y: Cell has a color already (do nothing)
                // Copy y to k1
                k0 {>400}- 
                 y {<400} [
                    k1 {>400}>+
                     y {<400}<-
                 ]
            ]
            // Copy k1 to y
            k1 {>400}> [
                y {<400}<+
               k1 {>400}>-
            ]
            k0 < [     // y: Cell has no color
                {<400}      // Go back to map
                {<311}      // Go to cell #0
                {>618}      // Go to end of map

                > [-]+      // t0 (temporary)
                > [-]       // t1 (temporary)
                > [         // x: Current player is not 0

                    <<<       // Reset position (t0 / t1 / x)
                    {<618}    // Go back to cell #0
                    {>311}    // Go to cell #311 (bottom middle square)
                    [-]{+6}   // Set cell color to blue
                    {<311}    // Go back to cell #0
                    {>618}    // Go to t0
                    >>>[-]    // Go to x and reset it

                    // Copy x to t1
                    t0 <<-  x >> [ t1 <+  x >- ]
                ]
                // Copy t1 to x
                t1 < [ x >+  t1 <- ]
                t0 < [     // x: Current player is 0

                    {<618}<   // Go back to cell #0
                    {>311}    // Go to cell #311 (bottom middle square)
                    [-]{+4}   // Set cell color to red
                    {<311}    // Go back to cell #0
                    {>618}>   // Go to t0
                    >>+<<     // Current player is now 1

                    t0-
                ]

                {>400}
                k0[-]
            ]
        ]
    ]
]
{<400}
{<311}


// Checking hover on top right square
{>357}          // Top right square
{>400}          // Get far away from anything else

[-]+
>[-]{+14}       // Set desired mouse X (14)
>[-]{+6},       // Get mouse X (id 6)
[ <- >- ]       // 'Compare' both values

< [               // Mouse X is not right
    <[-]>[-]      // Clean up
]
< [               // Mouse X is right
    >[-]<[-]      // Clean up

    +
    >[-]{+7}     // Set desired mouse Y (7)
    >[-]{+7},     // Get mouse Y (id 7)
    [ <- >- ]     // 'Compare' both values

    < [               // Mouse Y is not right
        <[-]>[-]      // Clean up
    ]
    < [               // Mouse Y is right
        >[-]<[-]      // Clean up

        +
        >[-]+         // Set desired mouse click (1)
        >[-]{+8},     // Get mouse click (id 8)
        [ <- >- ]     // 'Compare' both values

        < [             // Mouse is not clicking
            <[-]>[-]    // Clean up
        ]
        < [             // Mouse is clicking
            >[-]<[-]    // Clean up

            +           // k0 (temporary)
            > [-]       // k1 (temporary)
            <{<400} [   // y: Cell has a color already (do nothing)
                // Copy y to k1
                k0 {>400}- 
                 y {<400} [
                    k1 {>400}>+
                     y {<400}<-
                 ]
            ]
            // Copy k1 to y
            k1 {>400}> [
                y {<400}<+
               k1 {>400}>-
            ]
            k0 < [     // y: Cell has no color
                {<400}      // Go back to map
                {<357}      // Go to cell #0
                {>618}      // Go to end of map

                > [-]+      // t0 (temporary)
                > [-]       // t1 (temporary)
                > [         // x: Current player is not 0

                    <<<       // Reset position (t0 / t1 / x)
                    {<618}    // Go back to cell #0
                    {>357}    // Go to cell #357 (top right square)
                    [-]{+6}   // Set cell color to blue
                    {<357}    // Go back to cell #0
                    {>618}    // Go to t0
                    >>>[-]    // Go to x and reset it

                    // Copy x to t1
                    t0 <<-  x >> [ t1 <+  x >- ]
                ]
                // Copy t1 to x
                t1 < [ x >+  t1 <- ]
                t0 < [     // x: Current player is 0

                    {<618}<   // Go back to cell #0
                    {>357}    // Go to cell #357 (top right square)
                    [-]{+4}   // Set cell color to red
                    {<357}    // Go back to cell #0
                    {>618}>   // Go to t0
                    >>+<<     // Current player is now 1

                    t0-
                ]
                {>400}
                k0[-]
            ]
        ]
    ]
]
{<400}
{<357}


// Checking hover on middle right square
{>359}          // Middle right square
{>400}          // Get far away from anything else

[-]+
>[-]{+14}       // Set desired mouse X (14)
>[-]{+6},       // Get mouse X (id 6)
[ <- >- ]       // 'Compare' both values

< [               // Mouse X is not right
    <[-]>[-]      // Clean up
]
< [               // Mouse X is right
    >[-]<[-]      // Clean up

    +
    >[-]{+9}     // Set desired mouse Y (9)
    >[-]{+7},     // Get mouse Y (id 7)
    [ <- >- ]     // 'Compare' both values

    < [               // Mouse Y is not right
        <[-]>[-]      // Clean up
    ]
    < [               // Mouse Y is right
        >[-]<[-]      // Clean up

        +
        >[-]+         // Set desired mouse click (1)
        >[-]{+8},     // Get mouse click (id 8)
        [ <- >- ]     // 'Compare' both values

        < [             // Mouse is not clicking
            <[-]>[-]    // Clean up
        ]
        < [             // Mouse is clicking
            >[-]<[-]    // Clean up

            +           // k0 (temporary)
            > [-]       // k1 (temporary)
            <{<400} [   // y: Cell has a color already (do nothing)
                // Copy y to k1
                k0 {>400}- 
                 y {<400} [
                    k1 {>400}>+
                     y {<400}<-
                 ]
            ]
            // Copy k1 to y
            k1 {>400}> [
                y {<400}<+
               k1 {>400}>-
            ]
            k0 < [     // y: Cell has no color
                {<400}      // Go back to map
                {<359}      // Go to cell #0
                {>618}      // Go to end of map

                > [-]+      // t0 (temporary)
                > [-]       // t1 (temporary)
                > [         // x: Current player is not 0

                    <<<       // Reset position (t0 / t1 / x)
                    {<618}    // Go back to cell #0
                    {>359}    // Go to cell #359 (middle right square)
                    [-]{+6}   // Set cell color to blue
                    {<359}    // Go back to cell #0
                    {>618}    // Go to t0
                    >>>[-]    // Go to x and reset it

                    // Copy x to t1
                    t0 <<-  x >> [ t1 <+  x >- ]
                ]
                // Copy t1 to x
                t1 < [ x >+  t1 <- ]
                t0 < [     // x: Current player is 0

                    {<618}<   // Go back to cell #0
                    {>359}    // Go to cell #359 (middle right square)
                    [-]{+4}   // Set cell color to red
                    {<359}    // Go back to cell #0
                    {>618}>   // Go to t0
                    >>+<<     // Current player is now 1

                    t0-
                ]

                {>400}
                k0[-]
            ]
        ]
    ]
]
{<400}
{<359}


// Checking hover on bottom right square
{>361}          // Bottom right square
{>400}          // Get far away from anything else

[-]+
>[-]{+14}       // Set desired mouse X (14)
>[-]{+6},       // Get mouse X (id 6)
[ <- >- ]       // 'Compare' both values

< [               // Mouse X is not right
    <[-]>[-]      // Clean up
]
< [               // Mouse X is right
    >[-]<[-]      // Clean up

    +
    >[-]{+11}     // Set desired mouse Y (9)
    >[-]{+7},     // Get mouse Y (id 7)
    [ <- >- ]     // 'Compare' both values

    < [               // Mouse Y is not right
        <[-]>[-]      // Clean up
    ]
    < [               // Mouse Y is right
        >[-]<[-]      // Clean up

        +
        >[-]+         // Set desired mouse click (1)
        >[-]{+8},     // Get mouse click (id 8)
        [ <- >- ]     // 'Compare' both values

        < [             // Mouse is not clicking
            <[-]>[-]    // Clean up
        ]
        < [             // Mouse is clicking
            >[-]<[-]    // Clean up

            +           // k0 (temporary)
            > [-]       // k1 (temporary)
            <{<400} [   // y: Cell has a color already (do nothing)
                // Copy y to k1
                k0 {>400}- 
                 y {<400} [
                    k1 {>400}>+
                     y {<400}<-
                 ]
            ]
            // Copy k1 to y
            k1 {>400}> [
                y {<400}<+
               k1 {>400}>-
            ]
            k0 < [     // y: Cell has no color
                {<400}      // Go back to map
                {<361}      // Go to cell #0
                {>618}      // Go to end of map

                > [-]+      // t0 (temporary)
                > [-]       // t1 (temporary)
                > [         // x: Current player is not 0

                    <<<       // Reset position (t0 / t1 / x)
                    {<618}    // Go back to cell #0
                    {>361}    // Go to cell #361 (bottom right square)
                    [-]{+6}   // Set cell color to blue
                    {<361}    // Go back to cell #0
                    {>618}    // Go to t0
                    >>>[-]    // Go to x and reset it

                    // Copy x to t1
                    t0 <<-  x >> [ t1 <+  x >- ]
                ]
                // Copy t1 to x
                t1 < [ x >+  t1 <- ]
                t0 < [     // x: Current player is 0

                    {<618}<   // Go back to cell #0
                    {>361}    // Go to cell #361 (bottom right square)
                    [-]{+4}   // Set cell color to red
                    {<361}    // Go back to cell #0
                    {>618}>   // Go to t0
                    >>+<<     // Current player is now 1

                    t0-
                ]

                {>400}
                k0[-]
            ]
        ]
    ]
]
{<400}
{<361}


// TODO: Win conditions

x o o   o x o   o o x
x o o   o x o   o o x
x o o   o x o   o o x

x x x   o o o   o o o
o o o   x x x   o o o
o o o   o o o   x x x

x o o   o o x
o x o   o x o
o o x   x o o


// Update screen
.