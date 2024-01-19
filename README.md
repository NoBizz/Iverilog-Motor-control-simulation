<h2 align="center">Motor control simulation for 3D printers</h2>


<p align = "center"><img src="https://private-user-images.githubusercontent.com/33463470/298158247-83c2be7d-e27c-4823-8682-f02cc1e8158d.jpg?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDU2ODc5NjQsIm5iZiI6MTcwNTY4NzY2NCwicGF0aCI6Ii8zMzQ2MzQ3MC8yOTgxNTgyNDctODNjMmJlN2QtZTI3Yy00ODIzLTg2ODItZjAyY2MxZTgxNThkLmpwZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDAxMTklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwMTE5VDE4MDc0NFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWM3MWNjMDc5MjFkNGI4MzYxNWJlYzYyZjYyNjc5MzRmMzQ4OTU2ODdkMjgzNGMyYmYxNzQ0MTg4NmM4NTNlMjgmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.mPbyaSKt1fs0BZXl3mmjUkwiFMHHU7lAqc5VYLChnOk" width="400" height="500"/><img></p>


<h3 align = "center">Motives</h3>

<p align = "left">
  I purchesed a 3D printer some time ago, it has served me well, the technology required to create and operate such a machine
  is incredible, how hard can it be I thought, turns out pritty hard, to figure out how to build first we must disassemble.
</p>


<h3 align = "center">The process</h3>

<p align = "left">
The focus is mainly on finetuning and optimization of on board sensores and motor controllers, seeing how much room is there to work with.
</p>

<p align = "center"><img src="https://private-user-images.githubusercontent.com/33463470/298161180-11c53a05-164d-4c46-a431-11a089591ab8.jpg?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDU2ODg2OTgsIm5iZiI6MTcwNTY4ODM5OCwicGF0aCI6Ii8zMzQ2MzQ3MC8yOTgxNjExODAtMTFjNTNhMDUtMTY0ZC00YzQ2LWE0MzEtMTFhMDg5NTkxYWI4LmpwZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDAxMTklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwMTE5VDE4MTk1OFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTJkNzhkYjJjYjRmZDk4MzdjMWI1NDFlM2ZjODFjNzcxZGZiNjVlNzU5YzJmNDcwZTYzZDQ4MmNiODI2MmQ1OTgmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.0yCXHn84LYRtSsqkqrL1iNOaJN4_nRSrMY_G_cXewTQ" width="200" height="200"/><img></p>


<p align = "left">
The first aspect to look at are the sensores, more specificaly those on the head of the printer and that of the extruder further on the back,
  reading this information will help with auxiliary systems and their optimization as their usage takes a long time, the head sensor is used for bed leveling quite boring but an extreamly important aspect, the aim is to speed this process up and get more accurate readings.
</p>

<p align = "center"><img src="https://private-user-images.githubusercontent.com/33463470/298161199-73bad8c9-0992-4e76-81f9-3e015924e64a.jpg?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDU2ODg3MDUsIm5iZiI6MTcwNTY4ODQwNSwicGF0aCI6Ii8zMzQ2MzQ3MC8yOTgxNjExOTktNzNiYWQ4YzktMDk5Mi00ZTc2LTgxZjktM2UwMTU5MjRlNjRhLmpwZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDAxMTklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwMTE5VDE4MjAwNVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTdhOTBhZDA5ZTc3YjZjYzU1YzQ4ZmFiZTgzMDY2MDA0ZTgxYmU2MWNlNGU5Y2RhYjcyZWI5MTA2YjM3YTNlOGImWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.wUksTC85xCjo93Mxuth65yb3OKY0QxcXyLvyVcH9gw4" width="200" height="200"/><img></p>

<p align = "left">
Next motor control and optimization, such a simple piece of machinery hides many tricks, I primarly use "half stepping" in this segment as it increses both accuracy of the motors and their speed, this is by far the most impactfull aspect as it directly contributes to the quality of prints.
</p>

<h3 align = "center">Conclusion</h3>
<p align = "center"><img src="https://private-user-images.githubusercontent.com/33463470/298163604-1c52f814-fffc-4b0f-b141-ead296722207.jpg?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDU2ODkzNjgsIm5iZiI6MTcwNTY4OTA2OCwicGF0aCI6Ii8zMzQ2MzQ3MC8yOTgxNjM2MDQtMWM1MmY4MTQtZmZmYy00YjBmLWIxNDEtZWFkMjk2NzIyMjA3LmpwZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDAxMTklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwMTE5VDE4MzEwOFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTUwYjQ0YmVhZjBiZjRiNjA0MjRmOThkYTQ2NWYzYjVkMTlmNzk0YmM3OWFkM2YyNDMwYzRmZTNkN2JmZjMzZDQmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.cUqb5IUYSvlecuVI0CQargjBCJpNut7237fU1wS6GCg" width="150" height="100"/><img></p>

<p align = "left">
I am glad the printer works under this directive although not perfect throught some testing smaller prints benefit the most as the more fine graned movement of the motors is better suited for small items, up to 4,5 cubuc cm in size, everything above this sice it seems not to improve the quality.
</p>
