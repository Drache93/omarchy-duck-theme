<svg xmlns="http://www.w3.org/2000/svg" width="512" height="512" viewBox="0 0 512 512">
  <title>Duck</title>
  <desc>The QVAC duck, antenna and all, in a terminal window, with hard shadows, as the other agents.</desc>
  <defs>
    <linearGradient id="main" x1="0" y1="0" x2="1" y2="1">
      <stop stop-color="{{ icon_main }}"/>
      <stop offset="1" stop-color="{{ icon_main_end }}"/>
    </linearGradient>
    <!-- Body with a tail flick, head and antenna as one silhouette. -->
    <g id="duck">
      <path d="M118 262 L150 286 C160 250 200 242 236 250 L300 252 C356 252 392 280 392 320 C392 372 340 396 262 396 C186 396 132 372 126 322 C124 304 122 284 118 262 Z"/>
      <circle cx="292" cy="206" r="64"/>
      <rect x="286" y="118" width="12" height="32" rx="6"/>
      <circle cx="292" cy="114" r="14"/>
    </g>
  </defs>
  <g transform="translate(256 256) scale(1.2) translate(-256 -256)">
    <!-- The window; one hard shadow, as Hype's slides. -->
    <rect x="76" y="92" width="360" height="328" rx="22" fill="{{ icon_shadow }}" transform="translate(0 8)"/>
    <rect x="76" y="92" width="360" height="328" rx="22" fill="{{ icon_body }}" stroke="{{ icon_edge }}" stroke-width="3"/>
    <g transform="translate(256 262) scale(.8) translate(-265 -255)">
    <!-- The duck's hard shadow, then the duck. -->
    <use href="#duck" fill="{{ icon_shadow }}" transform="translate(0 8)"/>
    <path d="M346 206 C380 200 408 210 412 224 C406 240 376 248 344 240 Z" fill="{{ icon_shadow }}" transform="translate(0 8)"/>
    <use href="#duck" fill="url(#main)"/>
    <!-- Beak. -->
    <path d="M346 206 C380 200 408 210 412 224 C406 240 376 248 344 240 Z" fill="{{ icon_orange }}"/>
    <!-- Goggles cut out to the window, as the robot's eyes. -->
    <rect x="262" y="182" width="78" height="30" rx="15" fill="{{ icon_body }}"/>
    <!-- Wing. -->
    <path d="M196 300 C230 286 286 292 312 318 C282 346 230 346 196 300 Z" fill="{{ icon_shadow }}" opacity=".35"/>
    </g>
  </g>
</svg>
