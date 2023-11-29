opt = 0
while (opt != 3)
    flights = []
    origin = []
    destiny = []
    chairs = []
    puts "\n\n\n\n\n\n\n\n\n\n\n"
    puts '
                                               |
                                         --====|====--
                                               |  

                                           .-"""""-. 
                                         .;_________;. 
                                        /_/_|__|__|_\_\
                                       ;;-._       _.-;;
                  ,--------------------|    `-. .-;    |--------------------,
                   ``""--..__    ___   ;       ;       ;   ___    __..--""``
                             `"-// \\.._\             /_..// \\-"`
                                \\_//    ;._       _.;    \\_//
                                 `"`        ``---``        `"`
    '
    puts "This is AirFlare, here we make you fly!"
    puts "Which fly is you gonna take today?"
    puts "
                +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+         
                |1|-| Get Informated                |
                +-+-+ +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                |2|-| Reserve Info                  |
                +-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+
                |3|-| Exit                          |
                +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+                      
    "
    opt = gets
    case opt
    when 1
        "
                +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+         
                |1|-| Consult Using Flight Number   |
                +-+-+ +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
                |2|-| Reserve Chair                 |
                +-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+
                |3|-| Exit                          |
                +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+                      
        "
        opt = gets
        case opt
            when 1
                
            when 2
        end
    when 2
    when 3
        puts "Saindo..."
        exit
    end
end