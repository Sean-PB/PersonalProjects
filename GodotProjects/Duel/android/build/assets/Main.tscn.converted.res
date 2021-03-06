RSRC                    PackedScene                                                                     R      Script    res://Node2D.gd    Texture #   res://art/background_long_dirt.png    Texture %   res://art/buttons/alive_restart6.png    Texture &   res://art/cylinder/cylinder_empty.png    Texture !   res://art/cylinder/cylinder3.png    Texture !   res://art/cylinder/cylinder4.png    Texture !   res://art/cylinder/cylinder5.png    Texture !   res://art/cylinder/cylinder2.png    Texture !   res://art/cylinder/cylinder1.png    Texture !   res://art/cylinder/cylinder6.png    Texture &   res://art/cylinder/cylinder1_turn.png    Texture &   res://art/cylinder/cylinder5_turn.png    Texture &   res://art/cylinder/cylinder2_turn.png    Texture &   res://art/cylinder/cylinder4_turn.png    Texture &   res://art/cylinder/cylinder3_turn.png    Texture    res://art/tumbleweed.png    Texture    res://art/cactus2.png    Texture    res://art/cactus1.png    Texture    res://art/buttons/dodge.png    DynamicFontData    res://art/font/Gazelle.ttf    Texture !   res://art/tumbleweed_shadow2.png    Texture    res://art/buttons/load2.png    Texture    res://art/buttons/shoot3.png    Texture    res://art/cactus_shadow6.png    Texture $   res://art/buttons/dead_restart6.png    Texture    res://art/buttons/draw5.png    Texture    res://art/buttons/pause.png    Texture    res://art/buttons/unpause.png    Texture    res://art/white.png    Texture    res://art/victory_message3.png    Texture    res://art/tie_message.png    Texture    res://art/dead_message.png    Script    res://admob-lib/admob.gd    Texture &   res://art/enemy/enemy_draw_shadow.png    Texture '   res://art/enemy/enemy_draw_shadow4.png    Texture '   res://art/enemy/enemy_draw_shadow3.png    Texture '   res://art/enemy/enemy_draw_shadow2.png    Texture (   res://art/enemy/enemy_shoot_shadow2.png    Texture (   res://art/enemy/enemy_shoot_shadow3.png    Texture (   res://art/enemy/enemy_shoot_shadow4.png    Texture )   res://art/enemy/enemy_reload_shadow2.png    Texture )   res://art/enemy/enemy_reload_shadow3.png    Texture )   res://art/enemy/enemy_reload_shadow4.png    Texture )   res://art/enemy/enemy_reload_shadow5.png    Texture )   res://art/enemy/enemy_reload_shadow6.png    Texture (   res://art/enemy/enemy_dodge_shadow3.png    Texture (   res://art/enemy/enemy_dodge_shadow4.png    Texture (   res://art/enemy/enemy_dodge_shadow2.png    Texture '   res://art/enemy/enemy_die_shadow12.png    Texture '   res://art/enemy/enemy_die_shadow13.png    Texture '   res://art/enemy/enemy_die_shadow15.png    Texture '   res://art/enemy/enemy_die_shadow10.png    Texture '   res://art/enemy/enemy_die_shadow16.png    Texture '   res://art/enemy/enemy_die_shadow11.png    Texture '   res://art/enemy/enemy_die_shadow14.png    Texture '   res://art/enemy/enemy_die_shadow17.png    Texture '   res://art/enemy/enemy_die_shadow18.png    Texture '   res://art/enemy/enemy_die_shadow19.png    Texture &   res://art/enemy/enemy_die_shadow9.png    Texture &   res://art/enemy/enemy_die_shadow7.png    Texture &   res://art/enemy/enemy_die_shadow2.png    Texture &   res://art/enemy/enemy_die_shadow6.png    Texture &   res://art/enemy/enemy_die_shadow4.png    Texture &   res://art/enemy/enemy_die_shadow8.png    Texture &   res://art/enemy/enemy_die_shadow3.png    Texture &   res://art/enemy/enemy_die_shadow5.png    Texture '   res://art/enemy/enemy_die_shadow20.png    Texture (   res://art/enemy/enemy_dodge_shadow5.png    AudioStream "   res://art/sound/gunfire_close.wav    AudioStream     res://art/sound/gunfire_far.wav    AudioStream $   res://art/sound/dead_sound_slow.wav    AudioStream    res://art/sound/music.wav    AudioStream    res://art/sound/win_sound.wav    AudioStream     res://art/sound/load_sound2.wav    AudioStream &   res://art/sound/fall_sound_close4.wav    AudioStream #   res://art/sound/fall_sound_far.wav    Texture    res://art/buttons/sound.png    Texture    res://art/buttons/mute.png    Texture     res://art/buttons/help_sign.png    PackedScene    res://SplashScreen.tscn    Texture    res://art/buttons/vibrate.png    Texture "   res://art/buttons/vibrate_off.png    
   local://1 ?      
   local://2 ?         local://22 ?         local://23 ?      
   local://3        
   local://4 _      
   local://5 ?      
   local://6 o      
   local://7 ?      
   local://8 n      
   local://9 ?         local://10 y"         local://11 (         local://12 ?-         local://13 j.         local://14 ?.         local://15 /         local://16 M/         local://17 ?/         local://18 ?/         local://19 
0         local://20 I0         local://21 ?0      
   local://0 ?0         SpriteFrames      ?animations                   frames             "         (         )         *         +         ,         ,         ,         ,         ,         ,         ,         ,         ,         ,         +         *         )         (         "         loop              name       load       speed      ?A            frames             !         $         !         #         "         loop              name       draw       speed      pA            frames             "         "         "         "         "         "         "         <         @         >         A         =         ;         ?         :         3         5         0         1         6         2         4         7         8         9         B         loop              name       die       speed      B            frames             "         %         &         '         &         %         "         loop              name       shoot       speed      ?A            frames             "         /         -         .         C         C         C         C         C         C         C         C         C         C         C         C         .         -         /         "         loop              name       dodge       speed      ?A   DynamicFont      ?size       
  ?font_data             Shader      ?code    y  shader_type canvas_item;


uniform float width = 0.3;
uniform float gradient_ease = 5.0;
uniform float fill_ratio = 0.8;


void fragment() {
	float fill_angle = fill_ratio * 3.141592656 * 2.0;
	vec2 uv = UV * 2.0 - 1.0;
	if (atan(uv.x, uv.y) + 3.141592656 < fill_angle) {
		float inner_width = 1.0 - width;
		inner_width *= inner_width;
		float d = uv.x * uv.x + uv.y * uv.y;
		if (d >= inner_width && d <= 1.0) {
			float w = abs((1.0 + inner_width) / 2.0 - d) / (1.0 - inner_width);
			w = 1.0 - pow(w + 0.5, gradient_ease);
			COLOR = vec4(vec3(0.1), min(1.0, w));
		} else {
			COLOR.a = 0.0;
		}
	} else {
		COLOR.a = 0.0;
	}
}    ShaderMaterial      ?shader            ?shader_param/width )   ????????  ?shader_param/gradient_ease     @?E  ?shader_param/fill_ratio )   ????????   DynamicFont      ?size    !   
  ?font_data             DynamicFont      ?size    !   
  ?font_data             Shader      ?code    ?   shader_type canvas_item;

void fragment() {
	COLOR = texture(SCREEN_TEXTURE, SCREEN_UV);
    float avg = (COLOR.r + COLOR.g + COLOR.b) / 3.5;
    COLOR.rgb = vec3(avg);
}    ShaderMaterial      ?shader             Shader      ?code    ?   shader_type canvas_item;

void fragment() {
	COLOR = texture(SCREEN_TEXTURE, SCREEN_UV);
    float avg = (COLOR.r + COLOR.g + COLOR.b) / 7.0;
    COLOR.rgb = vec3(avg);
}    ShaderMaterial      ?shader             SpriteFrames      ?animations                   frames                                        loop              name    
   Four-Five       speed       A            frames                                        loop              name       Three-Four       speed       A            frames                               	         loop              name    	   Five-Six       speed       A            frames                      
                  loop              name       One-Two       speed       A            frames                                        loop              name    
   Two-Three       speed       A            frames                               loop              name    
   Empty-One       speed      ?A            frames                      loop              name       Empty       speed        
   Animation      ?length       @  ?tracks/0/type       bezier   ?tracks/0/path      
  ?FadeColor   ?color   ?r   ?tracks/0/interp         ?tracks/0/loop_wrap         ?tracks/0/imported          ?tracks/0/enabled         ?tracks/0/keys             points !            ??      ?>          ??      ?>          ??      ?>          times !             ?   @  ?tracks/1/type       bezier   ?tracks/1/path      
  ?FadeColor   ?color   ?g   ?tracks/1/interp         ?tracks/1/loop_wrap         ?tracks/1/imported          ?tracks/1/enabled         ?tracks/1/keys             points !            ??      ?>          ??      ?>          ??      ?>          times !             ?   @  ?tracks/2/type       bezier   ?tracks/2/path      
  ?FadeColor   ?color   ?b   ?tracks/2/interp         ?tracks/2/loop_wrap         ?tracks/2/imported          ?tracks/2/enabled         ?tracks/2/keys             points !            ??      ?>          ??      ?>          ??      ?>          times !             ?   @  ?tracks/3/type       bezier   ?tracks/3/path      
  ?FadeColor   ?color   ?a   ?tracks/3/interp         ?tracks/3/loop_wrap         ?tracks/3/imported          ?tracks/3/enabled         ?tracks/3/keys             points !            ??      ?>          ??      ?>      ??  ??      ?>          times !             ?   @
   Animation      ?length       @  ?tracks/0/type       bezier   ?tracks/0/path      
  ?FadeColor   ?color   ?r   ?tracks/0/interp         ?tracks/0/loop_wrap         ?tracks/0/imported          ?tracks/0/enabled         ?tracks/0/keys             points !        ??  ??      ?>      ??  ??      ?>      ??  ??      ?>          times !             ?   @  ?tracks/1/type       bezier   ?tracks/1/path      
  ?FadeColor   ?color   ?g   ?tracks/1/interp         ?tracks/1/loop_wrap         ?tracks/1/imported          ?tracks/1/enabled         ?tracks/1/keys             points !        ??  ??      ?>      ??  ??      ?>      ??  ??      ?>          times !             ?   @  ?tracks/2/type       bezier   ?tracks/2/path      
  ?FadeColor   ?color   ?b   ?tracks/2/interp         ?tracks/2/loop_wrap         ?tracks/2/imported          ?tracks/2/enabled         ?tracks/2/keys             points !        ??  ??      ?>      ??  ??      ?>      ??  ??      ?>          times !             ?   @  ?tracks/3/type       bezier   ?tracks/3/path      
  ?FadeColor   ?color   ?a   ?tracks/3/interp         ?tracks/3/loop_wrap         ?tracks/3/imported          ?tracks/3/enabled         ?tracks/3/keys             points !            ??      ?>          ??      ?>      ??  ??      ?>          times !             ?   @   SpriteFrames      ?animations                   frames                                        loop              name       default       speed           DynamicFont      ?size    `     ?outline_color                  ??
  ?font_data             DynamicFont      ?size    `   
  ?font_data             DynamicFont      ?size    `   
  ?font_data             DynamicFont      ?size        
  ?font_data             DynamicFont      ?size    P   
  ?font_data             DynamicFont      ?size    (   
  ?font_data             DynamicFont      ?size    "   
  ?font_data             DynamicFont      ?size    "   
  ?font_data             DynamicFont      ?size    P   
  ?font_data             PackedScene      ?resource_local_to_scene          ?resource_name        	  ?_bundled    	         names "   W     Node2D    Node2D    script    Background    Sprite 	   position    texture    Foreground    Node2D 	   position    Enemy    AnimatedSprite 	   position    frames 
   animation    shadow4    Sprite 	   position 	   rotation    scale    texture    flip_h 	   CShadow1    Sprite 	   position 	   rotation    scale    texture    flip_v    Cactus    Sprite 	   position    scale    texture    shadow2    Sprite 	   position 	   rotation    scale    texture    flip_h    Tumbleweed2    Sprite 	   position 	   rotation    scale    texture    shadow    Sprite 	   position 	   rotation    scale    texture    flip_h 	   CShadow2    Sprite 	   position 	   rotation    scale    texture    flip_h    flip_v    Cactus2    Sprite 	   position    scale    texture    Tumbleweed    Sprite 	   position 	   rotation    scale    texture    shadow3    Sprite 	   position 	   rotation    scale    texture    flip_h    Tumbleweed3    Sprite 	   position 	   rotation    scale    texture    Tumbleweed4    Sprite 	   position 	   rotation    scale    texture 
   EnemyText    Label    margin_left    margin_top    margin_right    margin_bottom    custom_colors/font_color     custom_colors/font_color_shadow    custom_fonts/font    align    valign 	   __meta__    PlayerMoveTimerVisual    Panel    visible 	   material    margin_left    margin_top    margin_right    margin_bottom    rect_scale 	   __meta__    Load    TouchScreenButton    visible 	   position    normal    Label    Label    anchor_top    anchor_bottom    margin_left    margin_top    margin_right    margin_bottom    custom_colors/font_color $   custom_colors/font_outline_modulate     custom_colors/font_color_shadow    custom_fonts/font    text    align    valign 	   autowrap 
   clip_text 	   __meta__    Dodge    TouchScreenButton    visible 	   position    normal    abel2    Label    margin_left    margin_top    margin_right    margin_bottom    custom_colors/font_color $   custom_colors/font_outline_modulate     custom_colors/font_color_shadow    custom_fonts/font    text    align    valign 	   __meta__    Fire    TouchScreenButton    visible 	   position    normal    Label    Label    margin_left    margin_top    margin_right    margin_bottom    custom_colors/font_color $   custom_colors/font_outline_modulate     custom_colors/font_color_shadow    custom_fonts/font    text    align    valign 	   __meta__    GrayscaleShader    TextureRect    visible 	   material    margin_left    margin_top    margin_right    margin_bottom    texture    expand 	   __meta__    GrayscaleShader2    TextureRect    visible 	   material    margin_top    margin_right    margin_bottom    texture    expand 	   __meta__ 	   Camera2D 	   Camera2D 	   position    current 	   Cylinder    AnimatedSprite    visible 	   position    scale    frames 
   animation    FadeAnimation    AnimationPlayer    anims/FadeToBlack    anims/FadeToWhite 
   FadeColor 
   ColorRect    visible    margin_left    margin_top    margin_right    margin_bottom    color 	   __meta__    MessageArt    AnimatedSprite    visible 	   position    frames    frame    DeadMessage    Label    visible    margin_left    margin_top    margin_right    margin_bottom    custom_colors/font_color     custom_colors/font_color_shadow    custom_fonts/font    text    align    valign 	   __meta__    VictoryMessage    Label    visible    margin_left    margin_top    margin_right    margin_bottom    custom_colors/font_color     custom_colors/font_color_shadow    custom_fonts/font    text    align    valign 	   __meta__ 	   Restart1    TouchScreenButton    visible 	   position    scale    normal    Label    Label    margin_left    margin_top    margin_right    margin_bottom    custom_fonts/font    text    align    valign 	   __meta__ 	   Restart2    TouchScreenButton    visible 	   position    scale    normal    Label    Label    margin_left    margin_top    margin_right    margin_bottom    custom_colors/font_color $   custom_colors/font_outline_modulate     custom_colors/font_color_shadow    custom_fonts/font    text    align    valign 	   __meta__    Pause    TouchScreenButton    visible 	   position    normal    Unpause    TouchScreenButton    pause_mode    visible 	   position    normal    Help    TouchScreenButton    pause_mode    visible 	   position    scale    normal    Label    Label    margin_left    margin_top    margin_right    margin_bottom     custom_colors/font_color_shadow    custom_fonts/font    text 	   __meta__    Sound    TouchScreenButton    pause_mode    visible 	   position    normal    Mute    TouchScreenButton    pause_mode    visible 	   position    normal 
   VibrateOn    TextureButton    pause_mode    visible    margin_left    margin_top    margin_right    margin_bottom    rect_scale    texture_normal 	   __meta__    VibrateOff    TextureButton    pause_mode    visible    margin_left    margin_top    margin_right    margin_bottom    rect_scale    texture_normal 	   __meta__    Instructions    Label    visible    margin_left    margin_top    margin_right    margin_bottom    custom_colors/font_color     custom_colors/font_color_shadow    custom_fonts/font    text 	   __meta__    DrawButtonEx    Sprite 	   position    scale    texture    Label    Label    margin_left    margin_top    margin_right    margin_bottom    custom_colors/font_color     custom_colors/font_color_shadow    custom_fonts/font    text 	   __meta__    LoadButtonEx    Sprite 	   position    scale    texture    Label    Label    margin_left    margin_top    margin_right    margin_bottom    custom_colors/font_color     custom_colors/font_color_shadow    custom_fonts/font    text 	   __meta__    LoadButtonEx2    Sprite 	   position    scale    texture    Label    Label    margin_left    margin_top    margin_right    margin_bottom    custom_colors/font_color     custom_colors/font_color_shadow    custom_fonts/font    text 	   __meta__    ShootButtonEx    Sprite 	   position    scale    texture    Label    Label    margin_left    margin_top    margin_right    margin_bottom    custom_colors/font_color     custom_colors/font_color_shadow    custom_fonts/font    text 	   __meta__    ShootButtonEx2    Sprite 	   position    scale    texture    Label    Label    margin_left    margin_top    margin_right    margin_bottom    custom_colors/font_color     custom_colors/font_color_shadow    custom_fonts/font    text 	   __meta__    DodgeButtonEx    Sprite 	   position    scale    texture    Label    Label    margin_left    margin_top    margin_right    margin_bottom    custom_colors/font_color     custom_colors/font_color_shadow    custom_fonts/font    text 	   __meta__    DodgeButtonEx2    Sprite 	   position    scale    texture    Label    Label    margin_left    margin_top    margin_right    margin_bottom    custom_colors/font_color     custom_colors/font_color_shadow    custom_fonts/font    text 	   __meta__    Draw    TouchScreenButton    visible 	   position    scale    normal    Label    Label    margin_left    margin_top    margin_right    margin_bottom    custom_colors/font_color     custom_colors/font_color_shadow    custom_fonts/font    text    align    valign 	   __meta__    PlayerMoveTimer    Timer 	   one_shot 
   ShowTimer    Timer 	   one_shot    Rumble1    Timer 
   wait_time 	   one_shot    Rumble2    Timer 
   wait_time 	   one_shot    DodgeTimer    Timer 
   wait_time 	   one_shot 
   DeadTimer    Timer 
   wait_time 	   one_shot    GunfireTimer    Timer 
   wait_time 	   one_shot    GunfireClose    AudioStreamPlayer    stream 
   volume_db 	   WinSound    AudioStreamPlayer    stream 
   volume_db    FallSoundFar    AudioStreamPlayer    stream    FallSoundClose    AudioStreamPlayer    stream 
   LoadSound    AudioStreamPlayer    stream 
   volume_db    EnemyLoadSound    AudioStreamPlayer    stream 
   volume_db    Music    AudioStreamPlayer    stream 
   volume_db 
   DeadSound    AudioStreamPlayer    stream 
   volume_db    GunfireFar    AudioStreamPlayer    stream 
   volume_db    AdMob    Node    script 
   banner_id    SplashScreen    _on_Load_released 	   released    _on_Dodge_released 	   released    _on_Fire_released 	   released    _on_Restart_released 	   released    _on_Restart_released 	   released    _on_Pause_released 	   released    _on_Unpause_released 	   released    _on_Help_released 	   released    _on_Sound_released 	   released    _on_Mute_released 	   released    _on_VibrateOn_pressed    pressed    _on_VibrateOff_pressed    pressed    _on_Draw_released 	   released    _on_PlayerMoveTimer_timeout    timeout    _on_ShowTimer_timeout    timeout    _on_Rumble1_timeout    timeout    _on_Rumble2_timeout    timeout    _on_GunfireTimer_timeout    timeout    _on_Music_finished 	   finished    	   variants    ?            
   +?oC-??         
    ?? ??C
        ??C               draw 
   )?L??x?C)   R
?????
   r?>???>               
   n????C)   ?[??b???
   ??>???>               
   {tC????C
   ???>??>         
   ?R#C???C)   ?5^?I?@
   $??>???               
   ^:?B???C)   ??k??^??
   ??>??>         
   ?:mCfvD)   ?o*Ra?@
   ???3???               
   ???C??D)   j???w??
   \?9?f/C?                     
   ??HCJ<?C
   x?-???F?         
   F?7C???C)   ??(?N??
   \?T?&?         
   ????)D)   ??(?Af?
   ~??K i?               
   ??X?y??C)   ??(?N??
   	??{?         
   {t7???C)   n?HJz??
   ???>???>              ?B    ??C     ?C    ??C                 ??                 ??                                 _edit_use_anchors_                             bC    ??C    ??C     ?C
      ?   ?            _edit_use_anchors_               
         9D         )   ???>?[?)   ???>?[?)   ??(\?D@)   ?lV}??X@)   ?z?GA_@)   ???SW`@   ??q???q???q?  ??                 ??                 ??               Load                                     _edit_use_anchors_               
     ?C  9D         )   ?????b8@)   ??|?5?Y@)   1?Za@)   ?v??a@   ??]???]???]?  ??                 ??                 ??               Dodge                         _edit_use_anchors_               
      C  9D         )   ????y9@)   /?$??Y@)   ?Zd;/a@)   ?n??
a@   ??]???]???]?  ??                 ??                 ??               Shoot                         _edit_use_anchors_                        )   ?j?  ??     ??     ?C    `?D                           _edit_use_anchors_                             ??     ?C    `?D                           _edit_use_anchors_        
     pC  ?C             
     4?  fC
      ?   ?      	         Three-Four       
                   )   %??C!p?)   %??C}?)   ??~j?Np@)   ??~j?.}@                               _edit_use_anchors_               
         z?                      )   
??p=?k?)   W[???~R?)   ?(\???k@)   ??:M6@     ??  ??  ??  ??                 ??               DEAD                         _edit_use_anchors_               )   
??p=?k?)   V-:K?)   ?(\???k@)   ??????D@                 ??                 ??               Victory                         _edit_use_anchors_               
   ?= ????
      ?   ?         )   ??\?C?T@)   ??:M8@)   ??(\?b{@)   ??C? c@               Restart                         _edit_use_anchors_               
   !p??$t?
      ?   ?         )   b??4??S@)   '???W?1@)   
??p=*{@)   ????KWb@                 ??                 ??                 ??               Restart                         _edit_use_anchors_               
     *C ???                      
     *C ???                      
   )??  ??
      ?   ?      N   )   ?/?''P@)   P?s??@@)   ?(\??9p@)   bX9?0`@                 ??               HELP             _edit_use_anchors_                     
     a? ???      L                
     a? ???      M                     k?    ???    ??C     {C
   ??>??>      P               _edit_use_anchors_                          r?    ???     ?C     ?C
   ??>??>      Q               _edit_use_anchors_               )   H?z?n?     ??)   ???QPn@    ??C     ???{??? <  ??     ??          ??            e    - Press              to start.

  - Choose         ,         , or        
   after your device
				   vibrates. You have one
				   second to choose.
				
  - The enemy's choice will
				   show after you choose.

  -         To load a bullet. Must
     load before shooting.

  -         To shoot enemy.

  -         To dodge enemy shots.             _edit_use_anchors_        
     4C  pA
   ??L>??L>         )   h??|?aX?)   ????E?]?)   X9??Z@)   ?h o?lC?     ??  ??  ??  ??                 ??               Draw             _edit_use_anchors_        
     MC  ?B
   ???>???>         )   P??n?G?)   ????1@)   ?rh??\I@)   r?????L@     ??  ??  ??  ??                 ??               Load             _edit_use_anchors_        
     ?B ??C
   ???>???>         )   P??n?G?)   ????1@)   ?rh??\I@)   r?????L@     ??  ??  ??  ??                 ??               Load             _edit_use_anchors_        
     ?C  ?B
   ???>???>             ?Y?     ?A    ?~B    ?gB     ??  ??  ??  ??                 ??               Shoot             _edit_use_anchors_        
     ?B  ?C
   ???>???>             ?Y?     ?A    ?~B    ?gB     ??  ??  ??  ??                 ??               Shoot             _edit_use_anchors_        
    ??C  ?B
   ???>???>         )   Q?|a?J?)   ???4@)   ??A??R@)   ?q????M@     ??  ??  ??  ??                 ??               Dodge             _edit_use_anchors_        
     ?B ?D
   ???>???>         )   Q?|a?J?)   ???4@)   ??A??R@)   ?q????M@     ??  ??  ??  ??                 ??               Dodge             _edit_use_anchors_               
   ???B?%D
     @?  @?         )   ?(\???\@)   ??e??IC@)   =
??p#w@)   ?rh???]@   ??]???]???]?  ??                 ??               DRAW                         _edit_use_anchors_                    )   333333??      )   333333??           ?>            ?      )   333333??            D         ?      H         A      K         J         I         ?      I        ??      G         A      F         ?      E        ??             '   ca-app-pub-3940256099942544/6300978111       O         node_count    P         nodes     T  ????????       ????                 @          ????                     @          ????   	            @       
   ????                           @          ????                  	      
               @          ????                                       @          ????                !            @    #   "   ????   $      %      &      '      (            @    *   )   ????   +      ,      -      .            @    0   /   ????   1      2      3      4       5   !       	  @    7   6   ????   8   "   9   #   :   $   ;   %   <   &   =   '       
  @    ?   >   ????   @   (   A   )   B   *         @    D   C   ????   E   +   F   ,   G   -   H   .         @    J   I   ????   K   /   L   0   M   1   N   2   O   3         @    Q   P   ????   R   4   S   5   T   6   U   7         @    W   V   ????   X   8   Y   9   Z   :   [   ;         @    ]   \   ????
   ^   <   _   =   `   >   a   ?   b   @   c   A   d   B   e   C   f   D   g   E         @    i   h   ????   j   F   k   G   l   H   m   I   n   J   o   K   p   L   q   M         @    s   r   ????   t   N   u   O   v   P         @    x   w   ????   y   Q   z   R   {   S   |   T   }   U   ~   V      W   ?   X   ?   Y   ?   Z   ?   [   ?   \   ?   ]   ?   ^   ?   _   ?   `         @    ?   ?   ????   ?   a   ?   b   ?   c         @    ?   ?   ????   ?   d   ?   e   ?   f   ?   g   ?   h   ?   i   ?   j   ?   k   ?   l   ?   m   ?   n   ?   o         @    ?   ?   ????   ?   p   ?   q   ?   r         @    ?   ?   ????   ?   s   ?   t   ?   u   ?   v   ?   w   ?   x   ?   y   ?   z   ?   {   ?   |   ?   }   ?   ~         @    ?   ?   ????	   ?      ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?         @    ?   ?   ????   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?         @    ?   ?   ????   ?   ?   ?   ?         @    ?   ?   ????   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?         @    ?   ?   ????   ?   ?   ?   ?         @    ?   ?   ????   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?         @    ?   ?   ????   ?   ?   ?   ?   ?   ?   ?   ?         @    ?   ?   ????   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?         @    ?   ?   ????   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?   ?          @    ?   ?   ????      ?     ?     ?     ?       !  @        ????	     ?     ?     ?   	  ?   
  ?     ?     ?     ?     ?       "  @        ????     ?     ?     ?     ?       #  @        ????     ?     ?     ?     ?     ?     ?     ?     ?     ?      ?   !  ?   "  ?       $  @    $  #  ????   %  ?   &  ?   '  ?       %  @    )  (  ????   *  ?   +  ?   ,  ?   -  ?       &  @    /  .  ????   0  ?   1  ?   2  ?   3  ?   4  ?       '  @    6  5  ????   7  ?   8  ?   9  ?   :  ?   ;  ?   <  ?   =  ?   >  ?       (  @    @  ?  ????   A  ?   B  ?   C  ?   D  ?       )  @    F  E  ????   G  ?   H  ?   I  ?   J  ?       *  @    L  K  ????	   M  ?   N  ?   O  ?   P  ?   Q  ?   R  ?   S  ?   T  ?   U  ?       +  @    W  V  ????	   X  ?   Y  ?   Z     [    \    ]    ^    _    `        ,  @    b  a  ????
   c    d    e  	  f  
  g    h    i    j    k    l        -  @    n  m  ????   o    p    q        .  @    s  r  ????	   t    u    v    w    x    y    z    {    |        /  @    ~  }  ????       ?    ?        0  @    ?  ?  ????	   ?     ?  !  ?  "  ?  #  ?  $  ?  %  ?  &  ?  '  ?  (      1  @    ?  ?  ????   ?  )  ?  *  ?  +      2  @    ?  ?  ????	   ?  ,  ?  -  ?  .  ?  /  ?  0  ?  1  ?  2  ?  3  ?  4      3  @    ?  ?  ????   ?  5  ?  6  ?  7      4  @    ?  ?  ????	   ?  8  ?  9  ?  :  ?  ;  ?  <  ?  =  ?  >  ?  ?  ?  @      5  @    ?  ?  ????   ?  A  ?  B  ?  C      6  @    ?  ?  ????	   ?  D  ?  E  ?  F  ?  G  ?  H  ?  I  ?  J  ?  K  ?  L      7  @    ?  ?  ????   ?  M  ?  N  ?  O      8  @    ?  ?  ????	   ?  P  ?  Q  ?  R  ?  S  ?  T  ?  U  ?  V  ?  W  ?  X      9  @    ?  ?  ????   ?  Y  ?  Z  ?  [      :  @    ?  ?  ????	   ?  \  ?  ]  ?  ^  ?  _  ?  `  ?  a  ?  b  ?  c  ?  d      ;  @    ?  ?  ????   ?  e  ?  f  ?  g  ?  h      <  @    ?  ?  ????   ?  i  ?  j  ?  k  ?  l  ?  m  ?  n  ?  o  ?  p  ?  q  ?  r  ?  s      =  @    ?  ?  ????   ?  t      >  @    ?  ?  ????   ?  u      ?  @    ?  ?  ????   ?  v  ?  w      @  @    ?  ?  ????   ?  x  ?  y      A  @    ?  ?  ????      z    {      B  @        ????     |    }      C  @        ????     ~  	        D  @      
  ????     ?    ?      E  @        ????     ?    ?      F  @        ????     ?      G  @        ????     ?      H  @        ????     ?    ?      I  @        ????     ?    ?      J  @    !     ????   "  ?  #  ?      K  @    %  $  ????   &  ?  '  ?      L  @    )  (  ????   *  ?  +  ?      M  @    -  ,  ????   .  ?  /  ?      N  @    ???0  ?                conn_count             conns     r   P  @O  @2  1         R  @Q  @4  3         T  @S  @6  5         V  @U  @8  7         X  @W  @:  9         Z  @Y  @<  ;         \  @[  @>  =         ^  @]  @@  ?         `  @_  @B  A         b  @a  @D  C         d  @c  @F  E         f  @e  @H  G         h  @g  @J  I         j  @i  @L  K         l  @k  @N  M         n  @m  @P  O         p  @o  @R  Q         r  @q  @T  S         t  @s  @V  U               node_paths    u           ?.         ?.   ?Background         ?.   ?Background   ?Foreground         ?.   ?Background   ?Foreground         ?.   ?Background   ?Foreground         ?.   ?Background   ?Foreground         ?.   ?Background   ?Foreground         ?.   ?Background   ?Foreground         ?.   ?Background   ?Foreground         ?.   ?Background   ?Foreground         ?.   ?Background   ?Foreground         ?.   ?Background   ?Foreground         ?.   ?Background   ?Foreground         ?.   ?Background   ?Foreground         ?.   ?Background   ?Foreground         ?.         ?.         ?.         ?.   ?Load         ?.         ?.   ?Dodge         ?.         ?.   ?Fire         ?.         ?.         ?.         ?. 	  ?Camera2D         ?. 	  ?Camera2D         ?. 	  ?Camera2D         ?. 	  ?Camera2D         ?. 	  ?Camera2D   ?MessageArt         ?. 	  ?Camera2D   ?MessageArt         ?. 	  ?Camera2D         ?. 	  ?Camera2D 	  ?Restart1         ?. 	  ?Camera2D         ?. 	  ?Camera2D 	  ?Restart2         ?. 	  ?Camera2D         ?. 	  ?Camera2D         ?. 	  ?Camera2D         ?. 	  ?Camera2D   ?Help         ?. 	  ?Camera2D         ?. 	  ?Camera2D         ?. 	  ?Camera2D         ?. 	  ?Camera2D         ?. 	  ?Camera2D         ?. 	  ?Camera2D   ?Instructions         ?. 	  ?Camera2D   ?Instructions   ?DrawButtonEx         ?. 	  ?Camera2D   ?Instructions         ?. 	  ?Camera2D   ?Instructions   ?LoadButtonEx         ?. 	  ?Camera2D   ?Instructions         ?. 	  ?Camera2D   ?Instructions   ?LoadButtonEx2         ?. 	  ?Camera2D   ?Instructions         ?. 	  ?Camera2D   ?Instructions   ?ShootButtonEx         ?. 	  ?Camera2D   ?Instructions         ?. 	  ?Camera2D   ?Instructions   ?ShootButtonEx2         ?. 	  ?Camera2D   ?Instructions         ?. 	  ?Camera2D   ?Instructions   ?DodgeButtonEx         ?. 	  ?Camera2D   ?Instructions         ?. 	  ?Camera2D   ?Instructions   ?DodgeButtonEx2         ?.         ?.   ?Draw         ?.         ?.         ?.         ?.         ?.         ?.         ?.         ?.         ?.         ?.         ?.         ?.         ?.         ?.         ?.         ?.         ?.         ?.         ?.         ?Load         ?.         ?Dodge         ?.         ?Fire         ?.       	  ?Camera2D 	  ?Restart1         ?.       	  ?Camera2D 	  ?Restart2         ?.       	  ?Camera2D   ?Pause         ?.       	  ?Camera2D   ?Unpause         ?.       	  ?Camera2D   ?Help         ?.       	  ?Camera2D   ?Sound         ?.       	  ?Camera2D   ?Mute         ?.       	  ?Camera2D 
  ?VibrateOn         ?.       	  ?Camera2D   ?VibrateOff         ?.         ?Draw         ?.         ?PlayerMoveTimer         ?.       
  ?ShowTimer         ?.         ?Rumble1         ?.         ?Rumble2         ?.         ?GunfireTimer         ?.         ?Music       editable_instances              version         ?script        RSRC