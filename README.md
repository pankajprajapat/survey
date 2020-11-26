# README

* all survey list with questions
curl --location --request GET 'http://localhost:3002/observes' \
--header 'Cookie: ahoy_visitor=bc1c4fbe-892f-4cdf-ae54-0f059786d03e; __profilin=p%3Dt; _session_id=UlE3bk1BUTgySmxMbEkvUzV5VmpnMXRRdVNWZmNUTE9YMFExTFdyRFpDdjZ3STJSeUZzT1lpWStKd1RuNHZWWWdvdVFUN3d1SU1NZTJhZHcwQ1VKeGc9PS0tT0xwZkNZTEdCNlhUaFp1eDljMjN2Zz09--bc241be6ad5bc245933d9c39d2bc2d5e419daef1; _redDoorz_session=NTNONXNVbFNJQ0IzUGt5b0RUekFhNDYxK0pmM04vWkNBcVExd0RlWnNGRjlycUxCeUV1UXpmc01QYTdNZDRGZmNxeTNudEc2aWNSVTNCRkh6UWlocXc9PS0tc0ltOTV4RjB3dHo2QURUejJjSzRRUT09--9436be5f36afbdbd5ce849a767cdd195e49ce271'

* add new survey
curl --location --request POST 'http://localhost:3002/observes' \
--header 'Cookie: ahoy_visitor=bc1c4fbe-892f-4cdf-ae54-0f059786d03e; __profilin=p%3Dt; _session_id=UlE3bk1BUTgySmxMbEkvUzV5VmpnMXRRdVNWZmNUTE9YMFExTFdyRFpDdjZ3STJSeUZzT1lpWStKd1RuNHZWWWdvdVFUN3d1SU1NZTJhZHcwQ1VKeGc9PS0tT0xwZkNZTEdCNlhUaFp1eDljMjN2Zz09--bc241be6ad5bc245933d9c39d2bc2d5e419daef1; _redDoorz_session=NTNONXNVbFNJQ0IzUGt5b0RUekFhNDYxK0pmM04vWkNBcVExd0RlWnNGRjlycUxCeUV1UXpmc01QYTdNZDRGZmNxeTNudEc2aWNSVTNCRkh6UWlocXc9PS0tc0ltOTV4RjB3dHo2QURUejJjSzRRUT09--9436be5f36afbdbd5ce849a767cdd195e49ce271' \
--form 'obserf[title]="New Survey"' \
--form 'obserf[description]="This is test description"'
{
    "id": 1,
    "title": "New Survey",
    "description": "This is test description",
    "created_at": "2020-11-26T14:25:21.626Z",
    "updated_at": "2020-11-26T14:25:21.626Z"
}

* edit survey
curl --location --request PUT 'http://localhost:3002/observes/1' \
--header 'Cookie: ahoy_visitor=bc1c4fbe-892f-4cdf-ae54-0f059786d03e; __profilin=p%3Dt; _session_id=UlE3bk1BUTgySmxMbEkvUzV5VmpnMXRRdVNWZmNUTE9YMFExTFdyRFpDdjZ3STJSeUZzT1lpWStKd1RuNHZWWWdvdVFUN3d1SU1NZTJhZHcwQ1VKeGc9PS0tT0xwZkNZTEdCNlhUaFp1eDljMjN2Zz09--bc241be6ad5bc245933d9c39d2bc2d5e419daef1; _redDoorz_session=NTNONXNVbFNJQ0IzUGt5b0RUekFhNDYxK0pmM04vWkNBcVExd0RlWnNGRjlycUxCeUV1UXpmc01QYTdNZDRGZmNxeTNudEc2aWNSVTNCRkh6UWlocXc9PS0tc0ltOTV4RjB3dHo2QURUejJjSzRRUT09--9436be5f36afbdbd5ce849a767cdd195e49ce271' \
--form 'obserf[title]="New Survey Edited"' \
--form 'obserf[description]="This is test description"'

* delete survey
curl --location --request DELETE 'http://localhost:3002/observes/1' \
--header 'Cookie: ahoy_visitor=bc1c4fbe-892f-4cdf-ae54-0f059786d03e; __profilin=p%3Dt; _session_id=UlE3bk1BUTgySmxMbEkvUzV5VmpnMXRRdVNWZmNUTE9YMFExTFdyRFpDdjZ3STJSeUZzT1lpWStKd1RuNHZWWWdvdVFUN3d1SU1NZTJhZHcwQ1VKeGc9PS0tT0xwZkNZTEdCNlhUaFp1eDljMjN2Zz09--bc241be6ad5bc245933d9c39d2bc2d5e419daef1; _redDoorz_session=NTNONXNVbFNJQ0IzUGt5b0RUekFhNDYxK0pmM04vWkNBcVExd0RlWnNGRjlycUxCeUV1UXpmc01QYTdNZDRGZmNxeTNudEc2aWNSVTNCRkh6UWlocXc9PS0tc0ltOTV4RjB3dHo2QURUejJjSzRRUT09--9436be5f36afbdbd5ce849a767cdd195e49ce271'



* add a new question
curl --location --request POST 'http://localhost:3002/questions' \
--header 'Cookie: ahoy_visitor=bc1c4fbe-892f-4cdf-ae54-0f059786d03e; __profilin=p%3Dt; _session_id=UlE3bk1BUTgySmxMbEkvUzV5VmpnMXRRdVNWZmNUTE9YMFExTFdyRFpDdjZ3STJSeUZzT1lpWStKd1RuNHZWWWdvdVFUN3d1SU1NZTJhZHcwQ1VKeGc9PS0tT0xwZkNZTEdCNlhUaFp1eDljMjN2Zz09--bc241be6ad5bc245933d9c39d2bc2d5e419daef1; _redDoorz_session=NTNONXNVbFNJQ0IzUGt5b0RUekFhNDYxK0pmM04vWkNBcVExd0RlWnNGRjlycUxCeUV1UXpmc01QYTdNZDRGZmNxeTNudEc2aWNSVTNCRkh6UWlocXc9PS0tc0ltOTV4RjB3dHo2QURUejJjSzRRUT09--9436be5f36afbdbd5ce849a767cdd195e49ce271' \
--form 'question[observe_id]="1"' \
--form 'question[name]="This is first question"'


* edit a question
curl --location --request PUT 'http://localhost:3002/questions/1' \
--header 'Cookie: ahoy_visitor=bc1c4fbe-892f-4cdf-ae54-0f059786d03e; __profilin=p%3Dt; _session_id=UlE3bk1BUTgySmxMbEkvUzV5VmpnMXRRdVNWZmNUTE9YMFExTFdyRFpDdjZ3STJSeUZzT1lpWStKd1RuNHZWWWdvdVFUN3d1SU1NZTJhZHcwQ1VKeGc9PS0tT0xwZkNZTEdCNlhUaFp1eDljMjN2Zz09--bc241be6ad5bc245933d9c39d2bc2d5e419daef1; _redDoorz_session=NTNONXNVbFNJQ0IzUGt5b0RUekFhNDYxK0pmM04vWkNBcVExd0RlWnNGRjlycUxCeUV1UXpmc01QYTdNZDRGZmNxeTNudEc2aWNSVTNCRkh6UWlocXc9PS0tc0ltOTV4RjB3dHo2QURUejJjSzRRUT09--9436be5f36afbdbd5ce849a767cdd195e49ce271' \
--form 'question[observe_id]="1"' \
--form 'question[name]="This is first question edit"'


* delete a question
curl --location --request DELETE 'http://localhost:3002/questions/1' \
--header 'Cookie: ahoy_visitor=bc1c4fbe-892f-4cdf-ae54-0f059786d03e; __profilin=p%3Dt; _session_id=UlE3bk1BUTgySmxMbEkvUzV5VmpnMXRRdVNWZmNUTE9YMFExTFdyRFpDdjZ3STJSeUZzT1lpWStKd1RuNHZWWWdvdVFUN3d1SU1NZTJhZHcwQ1VKeGc9PS0tT0xwZkNZTEdCNlhUaFp1eDljMjN2Zz09--bc241be6ad5bc245933d9c39d2bc2d5e419daef1; _redDoorz_session=NTNONXNVbFNJQ0IzUGt5b0RUekFhNDYxK0pmM04vWkNBcVExd0RlWnNGRjlycUxCeUV1UXpmc01QYTdNZDRGZmNxeTNudEc2aWNSVTNCRkh6UWlocXc9PS0tc0ltOTV4RjB3dHo2QURUejJjSzRRUT09--9436be5f36afbdbd5ce849a767cdd195e49ce271'
