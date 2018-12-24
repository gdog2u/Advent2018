use v5.10;
use Data::Dumper;
use warnings;

my @claims = ("1-287-428-27-20", "2-282-539-20-10", "3-550-118-20-23", "4-454-774-20-19", "5-542-157-11-24", "6-249-134-15-20", "7-825-137-12-22", "8-444-393-12-10", "9-810-143-27-20", "10-674-274-25-13", "11-974-802-13-15", "12-607-514-22-24", "13-640-627-24-25", "14-188-652-5-17", "15-268-962-16-12", "16-868-950-26-22", "17-309-698-27-29", "18-51-514-26-17", "19-939-416-25-25", "20-262-284-12-17", "21-46-269-13-29", "22-340-492-26-26", "23-311-885-13-21", "24-564-656-21-16", "25-805-434-17-16", "26-355-616-5-18", "27-485-434-29-18", "28-685-751-18-26", "29-321-768-14-12", "30-287-551-8-10", "31-327-181-28-25", "32-74-698-10-28", "33-47-758-21-17", "34-86-359-27-25", "35-944-163-17-18", "36-338-306-28-17", "37-415-344-22-22", "38-702-845-22-19", "39-320-718-24-22", "40-955-914-19-29", "41-551-434-20-19", "42-275-198-24-16", "43-219-290-13-20", "44-712-749-18-23", "45-759-839-14-10", "46-792-885-14-12", "47-109-75-20-26", "48-957-801-28-15", "49-433-538-18-11", "50-245-365-25-18", "51-520-978-10-10", "52-355-59-15-28", "53-422-420-26-14", "54-890-543-12-18", "55-41-813-11-22", "56-941-452-25-19", "57-155-485-13-19", "58-652-260-18-28", "59-527-935-29-21", "60-402-292-29-25", "61-175-586-28-22", "62-239-403-16-20", "63-609-209-22-14", "64-464-798-13-25", "65-275-972-13-23", "66-260-940-25-11", "67-43-358-12-23", "68-359-278-18-11", "69-184-634-25-14", "70-57-763-13-13", "71-838-384-25-25", "72-22-256-22-19", "73-707-921-19-29", "74-504-229-16-27", "75-658-555-22-16", "76-825-642-29-26", "77-622-572-29-13", "78-187-174-12-11", "79-236-469-24-27", "80-977-77-18-8", "81-734-779-15-12", "82-859-826-16-25", "83-386-215-18-12", "84-840-671-29-13", "85-862-119-15-18", "86-603-203-19-12", "87-559-435-16-23", "88-657-470-19-20", "89-704-184-22-28", "90-597-490-20-29", "91-936-217-23-18", "92-513-231-29-29", "93-83-504-19-11", "94-868-66-28-25", "95-834-840-28-24", "96-39-768-22-28", "97-937-35-20-28", "98-371-896-22-17", "99-469-969-15-15", "100-476-845-18-15", "101-526-632-25-11", "102-588-911-25-19", "103-419-609-15-19", "104-908-900-25-26", "105-445-881-21-16", "106-283-821-18-29", "107-231-213-20-10", "108-699-974-13-22", "109-314-969-24-15", "110-393-594-20-20", "111-708-859-21-15", "112-540-557-10-24", "113-104-977-26-22", "114-213-212-19-16", "115-935-628-16-29", "116-21-353-21-14", "117-904-303-18-23", "118-83-295-18-23", "119-192-183-22-11", "120-672-500-10-11", "121-253-58-23-27", "122-554-664-16-29", "123-365-668-17-25", "124-294-870-20-20", "125-352-534-28-29", "126-104-712-15-13", "127-486-221-14-27", "128-148-772-21-27", "129-376-67-24-19", "130-396-581-25-14", "131-576-939-10-17", "132-856-544-26-16", "133-232-75-20-22", "134-949-287-20-27", "135-52-512-10-13", "136-51-604-16-17", "137-953-552-26-17", "138-185-645-13-28", "139-541-202-27-26", "140-594-509-19-28", "141-214-104-23-18", "142-540-294-15-13", "143-7-286-21-24", "144-404-202-26-26", "145-775-677-21-23", "146-349-282-13-18", "147-214-913-28-18", "148-722-931-12-19", "149-582-688-14-17", "150-90-952-15-18", "151-888-653-22-28", "152-224-195-17-28", "153-664-300-28-14", "154-271-564-13-22", "155-696-943-18-29", "156-445-278-16-19", "157-748-783-15-25", "158-460-722-16-19", "159-207-107-24-19", "160-900-964-21-12", "161-471-791-21-15", "162-555-258-20-10", "163-341-36-17-26", "164-458-222-29-14", "165-900-15-16-17", "166-305-964-11-10", "167-213-798-26-10", "168-188-887-20-23", "169-162-31-13-29", "170-609-627-22-29", "171-506-739-25-16", "172-735-413-16-18", "173-140-232-14-10", "174-365-624-22-25", "175-127-190-12-21", "176-389-453-28-12", "177-224-205-16-21", "178-518-108-20-21", "179-570-927-22-13", "180-891-313-20-29", "181-893-599-18-11", "182-749-814-25-19", "183-847-377-11-11", "184-155-22-15-22", "185-508-534-13-10", "186-626-247-13-27", "187-374-388-18-11", "188-907-475-29-14", "189-871-813-27-25", "190-540-324-12-12", "191-259-546-22-24", "192-249-751-18-25", "193-247-497-11-10", "194-41-326-22-19", "195-157-481-26-25", "196-291-211-13-13", "197-265-78-27-12", "198-273-77-12-19", "199-756-94-10-19", "200-462-973-14-15", "201-821-303-13-21", "202-454-948-20-26", "203-902-275-24-24", "204-444-158-28-16", "205-675-524-21-10", "206-780-941-23-27", "207-459-149-16-25", "208-943-826-23-15", "209-694-424-16-18", "210-204-592-18-4", "211-972-415-19-18", "212-679-190-12-22", "213-906-834-10-25", "214-480-783-12-27", "215-633-699-18-25", "216-1-170-26-29", "217-886-781-18-12", "218-738-937-25-24", "219-109-728-28-26", "220-723-860-21-11", "221-81-230-17-28", "222-164-93-17-22", "223-439-940-24-23", "224-341-614-13-25", "225-282-680-12-28", "226-551-470-27-19", "227-897-547-11-17", "228-866-130-26-18", "229-555-592-18-21", "230-889-672-20-19", "231-565-596-21-18", "232-789-146-15-13", "233-536-60-10-23", "234-673-481-13-20", "235-947-240-18-27", "236-325-737-21-12", "237-773-608-16-17", "238-444-577-13-27", "239-295-751-14-12", "240-651-181-29-16", "241-218-653-18-12", "242-607-651-14-13", "243-538-916-29-13", "244-266-540-20-28", "245-139-507-29-20", "246-873-700-28-28", "247-691-182-23-26", "248-399-438-20-13", "249-497-865-29-19", "250-977-932-16-26", "251-181-689-12-27", "252-234-397-12-14", "253-461-560-20-11", "254-650-868-15-24", "255-861-293-17-19", "256-731-49-17-13", "257-885-594-11-13", "258-937-542-10-16", "259-841-292-26-28", "260-298-642-24-18", "261-842-667-13-14", "262-281-548-18-19", "263-562-218-18-19", "264-319-674-29-16", "265-403-60-21-21", "266-847-62-28-17", "267-557-202-15-29", "268-155-768-11-22", "269-67-294-24-24", "270-731-391-28-26", "271-542-562-3-14", "272-691-661-20-17", "273-447-91-23-15", "274-914-753-20-26", "275-266-770-20-16", "276-657-878-14-26", "277-362-642-13-21", "278-535-609-29-28", "279-307-435-29-29", "280-779-729-13-22", "281-906-938-23-27", "282-688-683-19-19", "283-297-748-12-10", "284-801-875-21-10", "285-858-142-17-11", "286-810-821-23-18", "287-792-105-21-11", "288-549-148-17-10", "289-491-562-18-11", "290-706-862-14-13", "291-812-290-29-21", "292-367-597-23-19", "293-971-555-24-18", "294-661-474-19-12", "295-167-345-10-24", "296-825-886-20-17", "297-782-396-27-20", "298-53-181-23-29", "299-95-219-17-25", "300-933-53-26-22", "301-511-156-17-13", "302-926-618-20-21", "303-449-605-12-19", "304-192-755-25-13", "305-950-310-13-29", "306-282-40-23-27", "307-253-123-28-23", "308-739-495-19-14", "309-857-954-15-13", "310-566-380-26-20", "311-121-709-15-10", "312-209-802-19-29", "313-245-307-10-26", "314-870-57-10-13", "315-402-883-13-12", "316-741-222-16-15", "317-882-13-21-24", "318-775-654-15-16", "319-308-199-27-28", "320-153-381-24-16", "321-636-43-26-17", "322-100-334-12-27", "323-970-649-23-11", "324-332-953-23-28", "325-460-39-19-29", "326-826-152-24-21", "327-488-880-29-12", "328-907-15-18-14", "329-640-701-14-21", "330-251-290-12-24", "331-213-772-10-24", "332-20-813-8-3", "333-265-963-12-27", "334-390-444-16-13", "335-610-287-25-12", "336-739-722-26-15", "337-510-52-18-13", "338-250-253-23-11", "339-600-605-11-28", "340-566-230-25-27", "341-322-723-16-21", "342-306-372-20-10", "343-188-631-28-10", "344-772-302-12-13", "345-686-390-18-21", "346-927-628-10-24", "347-691-22-23-21", "348-159-961-19-22", "349-35-125-4-7", "350-346-80-11-18", "351-221-241-22-26", "352-699-678-18-24", "353-421-592-14-20", "354-752-101-11-14", "355-202-157-28-23", "356-202-466-28-25", "357-381-75-28-12", "358-933-666-26-24", "359-315-787-18-19", "360-312-377-20-21", "361-555-612-24-18", "362-245-357-27-25", "363-39-562-13-11", "364-500-619-26-13", "365-645-513-3-4", "366-789-652-11-27", "367-632-534-11-26", "368-220-820-27-15", "369-952-732-23-22", "370-581-541-20-17", "371-214-531-13-16", "372-183-189-27-14", "373-420-938-25-19", "374-237-674-22-20", "375-253-655-16-28", "376-720-966-10-18", "377-203-487-18-12", "378-4-437-12-10", "379-58-859-15-20", "380-140-705-28-18", "381-196-656-25-20", "382-604-959-28-28", "383-703-671-27-18", "384-60-379-16-11", "385-126-201-25-11", "386-255-850-23-21", "387-608-524-14-22", "388-490-880-24-19", "389-817-545-23-13", "390-471-979-20-12", "391-576-910-27-19", "392-190-263-17-15", "393-240-480-19-28", "394-54-271-10-13", "395-286-559-14-20", "396-359-280-12-29", "397-798-822-10-20", "398-898-452-27-20", "399-960-608-12-14", "400-980-326-19-17", "401-43-58-28-23", "402-219-225-10-20", "403-73-699-14-28", "404-773-865-17-21", "405-341-507-25-20", "406-212-949-15-23", "407-377-520-20-25", "408-808-374-28-22", "409-280-923-28-18", "410-527-67-27-25", "411-971-379-20-10", "412-838-617-14-23", "413-468-87-14-12", "414-264-133-23-25", "415-824-913-22-14", "416-845-139-23-20", "417-95-846-14-17", "418-0-437-19-28", "419-45-368-12-17", "420-167-604-24-27", "421-485-925-24-29", "422-340-589-17-12", "423-276-66-21-15", "424-483-441-24-23", "425-252-461-15-14", "426-454-60-16-29", "427-406-885-11-23", "428-760-743-13-20", "429-346-573-21-11", "430-60-299-28-10", "431-709-303-12-12", "432-731-930-7-3", "433-204-410-13-21", "434-588-850-23-19", "435-419-599-16-18", "436-648-705-12-14", "437-232-909-26-20", "438-931-175-17-16", "439-959-742-27-22", "440-423-624-26-17", "441-107-715-25-12", "442-655-651-11-21", "443-840-610-20-23", "444-205-191-11-13", "445-74-26-24-28", "446-879-460-29-21", "447-355-740-11-15", "448-341-913-20-10", "449-310-245-18-10", "450-194-180-11-22", "451-129-786-26-25", "452-438-895-25-19", "453-12-454-25-25", "454-62-683-25-23", "455-44-178-10-14", "456-571-651-16-25", "457-320-262-13-13", "458-360-155-25-16", "459-98-188-20-20", "460-319-753-10-10", "461-709-874-29-10", "462-321-681-12-12", "463-136-794-20-15", "464-878-871-12-19", "465-286-107-24-11", "466-585-37-22-21", "467-450-164-24-17", "468-312-23-12-24", "469-543-113-29-18", "470-782-12-14-16", "471-854-145-27-18", "472-650-517-24-22", "473-176-567-18-17", "474-699-427-15-16", "475-634-448-11-24", "476-662-899-24-18", "477-49-342-10-19", "478-768-27-21-20", "479-191-740-19-10", "480-82-282-22-17", "481-736-935-14-21", "482-856-359-26-11", "483-109-329-23-19", "484-344-749-27-17", "485-109-799-26-11", "486-631-506-11-23", "487-847-117-29-22", "488-518-82-20-13", "489-372-606-22-15", "490-159-392-20-16", "491-577-842-17-26", "492-199-304-23-16", "493-857-947-18-20", "494-566-384-29-22", "495-460-557-12-12", "496-39-98-20-26", "497-780-20-24-11", "498-19-217-14-18", "499-360-771-29-15", "500-343-718-17-23", "501-703-741-28-11", "502-703-749-25-13", "503-104-280-29-21", "504-302-832-24-29", "505-656-906-28-21", "506-833-35-13-17", "507-70-155-18-26", "508-483-434-13-26", "509-676-766-16-17", "510-380-970-10-11", "511-212-12-25-16", "512-927-613-22-24", "513-579-70-10-18", "514-907-265-19-22", "515-212-942-26-16", "516-451-561-28-20", "517-689-958-23-28", "518-534-938-28-10", "519-382-145-18-21", "520-623-342-23-24", "521-361-678-18-18", "522-541-385-25-26", "523-102-836-26-22", "524-800-532-22-11", "525-763-292-21-16", "526-370-269-17-18", "527-271-229-21-18", "528-723-804-19-22", "529-348-360-18-22", "530-98-853-25-11", "531-489-21-13-19", "532-93-968-15-11", "533-418-719-26-27", "534-204-490-23-16", "535-289-969-29-10", "536-564-350-28-21", "537-426-404-22-23", "538-856-132-13-15", "539-795-630-22-29", "540-219-868-22-11", "541-152-566-23-14", "542-689-891-21-12", "543-776-853-10-22", "544-908-764-15-17", "545-946-938-18-18", "546-658-786-25-19", "547-307-781-26-22", "548-200-961-19-29", "549-975-851-17-28", "550-229-24-18-25", "551-67-367-18-16", "552-370-965-15-25", "553-616-283-23-13", "554-67-894-24-29", "555-681-743-12-18", "556-241-550-23-27", "557-729-54-25-26", "558-546-320-21-16", "559-388-755-20-19", "560-217-797-16-11", "561-154-921-13-16", "562-900-671-27-20", "563-692-678-27-12", "564-391-372-11-14", "565-63-899-13-15", "566-872-50-24-26", "567-652-802-11-27", "568-763-570-11-22", "569-314-258-20-11", "570-909-607-23-26", "571-238-414-23-19", "572-184-15-12-29", "573-178-433-16-11", "574-397-847-21-24", "575-448-168-21-26", "576-443-410-14-22", "577-863-408-12-25", "578-332-421-23-17", "579-55-363-21-28", "580-587-680-13-29", "581-366-781-27-22", "582-483-642-26-15", "583-732-617-27-15", "584-386-578-29-17", "585-584-636-18-22", "586-738-361-21-24", "587-404-280-25-20", "588-204-949-24-19", "589-308-973-13-27", "590-976-947-23-14", "591-959-184-14-18", "592-935-409-23-14", "593-402-903-16-19", "594-493-699-10-16", "595-943-199-23-10", "596-20-198-26-19", "597-968-609-11-17", "598-75-916-24-14", "599-91-486-14-24", "600-720-761-11-24", "601-424-125-21-26", "602-496-885-20-22", "603-48-168-29-12", "604-49-633-15-18", "605-335-588-12-21", "606-863-960-24-25", "607-542-607-25-22", "608-592-239-22-20", "609-246-671-28-10", "610-101-506-21-27", "611-516-488-16-16", "612-193-205-15-16", "613-488-645-24-24", "614-694-704-22-26", "615-529-842-27-25", "616-798-655-27-12", "617-225-871-16-24", "618-875-873-27-20", "619-210-464-17-28", "620-558-612-12-16", "621-467-789-14-28", "622-79-950-17-16", "623-35-749-10-28", "624-403-301-16-13", "625-401-222-26-27", "626-291-830-28-22", "627-64-945-25-24", "628-908-812-11-26", "629-42-810-29-20", "630-645-273-24-16", "631-786-124-15-25", "632-21-840-19-17", "633-296-684-24-11", "634-731-188-20-12", "635-544-615-28-20", "636-17-410-19-10", "637-881-853-23-26", "638-730-918-16-24", "639-768-691-16-11", "640-381-397-24-12", "641-160-97-18-28", "642-164-660-26-17", "643-100-267-19-19", "644-713-725-21-24", "645-270-944-23-18", "646-88-806-22-22", "647-453-556-21-18", "648-914-671-11-20", "649-494-884-19-4", "650-959-394-19-13", "651-628-608-20-15", "652-353-375-28-26", "653-10-174-20-13", "654-465-855-22-17", "655-176-878-17-27", "656-701-868-12-11", "657-100-7-15-19", "658-29-784-27-14", "659-96-138-10-13", "660-707-43-15-26", "661-945-523-29-23", "662-336-917-12-10", "663-512-795-14-27", "664-11-359-3-11", "665-106-844-18-13", "666-970-246-11-23", "667-479-957-23-15", "668-808-502-12-14", "669-375-743-20-18", "670-881-271-27-11", "671-329-373-28-25", "672-103-730-26-14", "673-432-510-18-29", "674-798-487-17-20", "675-539-873-22-17", "676-297-540-21-27", "677-50-242-20-13", "678-362-647-27-13", "679-405-597-23-28", "680-639-447-20-10", "681-198-430-19-20", "682-414-460-22-13", "683-164-608-18-14", "684-898-259-19-14", "685-152-934-13-11", "686-598-285-24-28", "687-858-905-20-25", "688-14-613-14-29", "689-238-769-18-26", "690-715-862-5-8", "691-617-47-29-28", "692-669-824-11-27", "693-948-649-18-13", "694-128-901-29-18", "695-256-72-14-25", "696-361-712-18-23", "697-75-482-22-23", "698-914-654-15-25", "699-482-119-19-28", "700-58-842-18-15", "701-563-970-10-17", "702-417-555-19-12", "703-427-142-26-24", "704-715-541-13-27", "705-356-284-12-11", "706-335-633-15-23", "707-313-980-14-16", "708-427-418-19-17", "709-53-892-12-28", "710-772-27-17-20", "711-546-947-28-19", "712-889-492-18-29", "713-320-943-20-27", "714-192-613-11-19", "715-413-600-22-25", "716-923-413-18-27", "717-216-961-14-13", "718-89-972-18-10", "719-893-606-29-21", "720-360-467-18-24", "721-949-617-24-10", "722-490-702-18-12", "723-285-955-25-19", "724-217-928-13-23", "725-906-488-15-25", "726-846-782-20-10", "727-475-473-16-15", "728-328-613-13-9", "729-410-563-27-17", "730-221-890-15-17", "731-77-465-28-19", "732-500-764-27-27", "733-391-900-18-15", "734-65-718-13-13", "735-745-170-23-23", "736-10-416-14-19", "737-201-608-23-14", "738-798-824-15-24", "739-475-103-20-17", "740-863-781-13-21", "741-778-643-24-19", "742-946-967-26-23", "743-515-974-24-20", "744-339-422-12-19", "745-882-304-29-18", "746-981-124-15-13", "747-913-744-10-28", "748-885-482-25-22", "749-64-176-12-15", "750-303-639-22-24", "751-648-689-11-29", "752-13-762-27-23", "753-838-585-17-28", "754-224-69-14-20", "755-111-666-29-29", "756-911-139-10-24", "757-169-640-11-11", "758-535-834-15-14", "759-98-425-26-21", "760-32-119-28-28", "761-56-481-17-10", "762-281-117-16-26", "763-533-599-22-16", "764-443-808-19-13", "765-381-277-20-14", "766-491-481-14-17", "767-517-808-13-29", "768-620-558-24-17", "769-347-364-25-29", "770-933-91-6-22", "771-813-612-28-21", "772-491-254-14-11", "773-504-773-13-28", "774-347-93-10-17", "775-138-30-25-14", "776-529-459-11-20", "777-518-73-21-19", "778-721-630-20-18", "779-265-141-9-7", "780-958-659-10-22", "781-912-147-25-15", "782-709-765-26-20", "783-18-210-26-14", "784-96-968-14-13", "785-891-465-14-26", "786-247-261-28-12", "787-237-122-19-26", "788-430-945-17-13", "789-756-202-12-29", "790-78-702-15-19", "791-955-834-26-22", "792-716-694-18-13", "793-306-303-24-25", "794-317-227-14-20", "795-415-2-16-13", "796-116-851-26-21", "797-844-670-28-19", "798-220-888-23-26", "799-265-882-29-25", "800-535-635-25-21", "801-582-630-25-25", "802-252-382-11-26", "803-184-739-14-10", "804-408-622-12-17", "805-754-620-14-13", "806-448-161-13-16", "807-741-51-29-27", "808-759-446-14-24", "809-877-58-16-23", "810-550-387-10-18", "811-960-129-22-26", "812-784-890-11-21", "813-1-328-28-10", "814-166-427-17-11", "815-105-5-17-11", "816-779-662-27-17", "817-537-473-21-20", "818-860-665-17-15", "819-434-131-21-26", "820-754-350-20-13", "821-746-275-11-26", "822-653-556-20-13", "823-386-757-14-13", "824-259-832-5-5", "825-345-635-29-26", "826-61-368-10-18", "827-418-316-27-24", "828-192-183-20-10", "829-550-785-16-10", "830-966-104-15-18", "831-892-3-19-16", "832-87-733-25-12", "833-525-616-25-27", "834-248-282-27-21", "835-281-664-23-17", "836-313-563-15-20", "837-554-587-21-14", "838-858-956-22-17", "839-342-762-22-16", "840-974-395-17-13", "841-855-765-15-25", "842-5-551-14-14", "843-548-389-12-16", "844-976-806-8-7", "845-943-130-28-27", "846-563-368-15-17", "847-594-252-19-26", "848-858-927-26-18", "849-678-900-27-21", "850-554-373-18-15", "851-625-656-10-23", "852-500-310-26-12", "853-96-969-27-27", "854-211-737-18-21", "855-329-150-18-10", "856-595-39-20-16", "857-259-208-23-29", "858-196-477-4-22", "859-109-622-29-17", "860-29-539-11-25", "861-454-193-16-16", "862-381-221-11-22", "863-342-435-13-18", "864-40-544-24-24", "865-366-702-27-13", "866-299-531-15-13", "867-440-30-11-18", "868-675-281-18-10", "869-7-310-22-29", "870-880-467-25-20", "871-172-4-19-29", "872-816-193-19-29", "873-466-10-15-21", "874-564-411-19-28", "875-902-313-16-17", "876-410-448-11-13", "877-351-153-20-25", "878-446-41-23-14", "879-535-786-27-26", "880-512-849-28-12", "881-933-447-24-21", "882-241-555-29-18", "883-489-539-26-29", "884-449-843-21-24", "885-90-663-27-12", "886-533-627-13-18", "887-405-189-24-24", "888-245-114-24-17", "889-487-863-20-25", "890-223-595-16-16", "891-697-100-11-12", "892-107-282-22-9", "893-963-904-20-25", "894-851-622-13-26", "895-841-221-29-12", "896-405-459-18-13", "897-56-59-23-10", "898-9-445-27-12", "899-440-319-14-11", "900-756-823-12-25", "901-940-681-27-26", "902-906-306-13-13", "903-290-655-17-15", "904-276-968-14-22", "905-23-792-27-13", "906-7-847-17-12", "907-315-199-14-29", "908-280-103-27-13", "909-744-636-16-20", "910-202-729-15-21", "911-663-404-15-27", "912-89-125-13-16", "913-829-851-18-25", "914-713-964-24-22", "915-645-597-23-22", "916-681-887-17-12", "917-83-317-25-23", "918-22-452-27-26", "919-21-303-11-27", "920-899-950-18-14", "921-446-380-22-16", "922-499-57-22-19", "923-21-208-15-18", "924-522-591-23-16", "925-671-834-4-4", "926-487-6-17-18", "927-784-742-15-20", "928-355-753-29-24", "929-743-204-10-23", "930-529-920-20-25", "931-237-215-10-5", "932-92-19-28-29", "933-739-57-27-25", "934-93-448-23-25", "935-838-202-21-23", "936-440-59-26-24", "937-171-854-11-10", "938-322-229-5-6", "939-284-24-19-24", "940-172-615-22-19", "941-156-665-24-29", "942-907-468-24-22", "943-423-294-15-14", "944-388-693-29-13", "945-688-149-25-18", "946-384-381-11-11", "947-1-137-19-17", "948-217-888-11-12", "949-518-273-18-15", "950-528-284-27-29", "951-663-547-16-18", "952-937-719-11-23", "953-806-98-13-18", "954-237-328-26-10", "955-543-601-14-14", "956-314-29-3-8", "957-266-491-12-19", "958-625-500-25-21", "959-892-766-20-10", "960-12-263-14-27", "961-731-183-26-23", "962-469-950-25-10", "963-14-134-25-23", "964-673-479-12-29", "965-160-574-29-13", "966-920-765-21-22", "967-970-616-23-16", "968-963-605-13-28", "969-322-611-23-15", "970-954-547-14-16", "971-959-221-20-27", "972-612-47-13-11", "973-606-26-13-24", "974-751-918-14-29", "975-30-450-18-27", "976-386-76-21-22", "977-519-840-17-12", "978-486-541-18-24", "979-156-29-26-23", "980-671-319-24-15", "981-70-272-14-26", "982-517-259-16-29", "983-949-444-19-26", "984-666-299-10-12", "985-559-660-14-18", "986-740-181-12-23", "987-442-793-22-22", "988-728-82-29-27", "989-717-529-12-25", "990-79-352-21-12", "991-197-966-20-22", "992-761-518-28-15", "993-694-93-24-28", "994-134-699-19-11", "995-897-958-24-28", "996-931-89-16-27", "997-939-739-11-27", "998-235-912-14-21", "999-48-616-14-17", "1000-558-689-27-15", "1001-425-942-26-28", "1002-451-543-13-20", "1003-711-72-25-11", "1004-515-837-16-24", "1005-491-868-29-22", "1006-150-404-24-24", "1007-544-670-22-14", "1008-758-822-16-22", "1009-245-914-20-18", "1010-216-802-16-21", "1011-581-829-14-19", "1012-704-42-17-20", "1013-223-892-11-26", "1014-777-622-26-10", "1015-869-633-29-23", "1016-28-612-27-13", "1017-761-455-4-6", "1018-217-775-24-17", "1019-415-87-29-21", "1020-122-630-11-14", "1021-296-567-12-11", "1022-832-893-11-27", "1023-989-649-10-29", "1024-719-629-21-15", "1025-865-548-29-26", "1026-967-245-14-29", "1027-642-549-26-11", "1028-542-304-17-21", "1029-182-684-21-20", "1030-691-405-19-28", "1031-822-299-21-14", "1032-258-507-21-28", "1033-869-751-25-23", "1034-326-662-10-27", "1035-967-595-18-19", "1036-613-236-24-28", "1037-859-963-10-21", "1038-892-965-16-19", "1039-890-53-25-27", "1040-472-817-20-21", "1041-94-778-23-13", "1042-364-67-21-28", "1043-652-412-28-11", "1044-892-463-14-27", "1045-650-321-20-19", "1046-333-950-14-16", "1047-175-581-26-25", "1048-331-213-12-14", "1049-8-593-19-12", "1050-356-57-11-12", "1051-498-451-25-22", "1052-368-705-14-15", "1053-680-126-28-24", "1054-728-173-27-14", "1055-417-449-27-23", "1056-364-396-24-27", "1057-889-751-26-25", "1058-360-47-19-24", "1059-353-612-14-26", "1060-697-382-21-17", "1061-209-175-29-19", "1062-159-916-18-23", "1063-108-713-23-20", "1064-678-410-17-16", "1065-604-871-24-23", "1066-584-926-26-13", "1067-760-747-23-26", "1068-210-929-26-22", "1069-891-508-27-19", "1070-441-94-27-29", "1071-319-679-25-18", "1072-589-516-11-15", "1073-238-355-23-10", "1074-376-368-15-21", "1075-972-893-13-17", "1076-944-538-11-20", "1077-675-897-11-13", "1078-867-88-16-23", "1079-861-116-16-14", "1080-433-578-29-17", "1081-729-926-12-15", "1082-104-196-15-14", "1083-129-258-14-11", "1084-573-46-24-29", "1085-761-22-24-10", "1086-278-949-29-26", "1087-866-337-13-29", "1088-28-312-28-17", "1089-467-821-19-23", "1090-323-896-28-26", "1091-414-908-26-11", "1092-328-171-19-20", "1093-604-297-28-10", "1094-842-667-17-23", "1095-508-300-21-19", "1096-866-397-19-16", "1097-625-496-12-23", "1098-450-763-12-12", "1099-1-546-22-29", "1100-912-730-25-15", "1101-960-520-13-19", "1102-369-367-17-24", "1103-657-333-27-15", "1104-193-475-15-28", "1105-266-735-11-21", "1106-39-156-20-21", "1107-878-38-15-20", "1108-720-759-13-13", "1109-314-829-15-10", "1110-145-521-16-19", "1111-44-919-26-27", "1112-504-890-25-10", "1113-457-23-27-20", "1114-364-342-21-24", "1115-64-475-21-24", "1116-315-250-18-14", "1117-113-772-28-28", "1118-513-734-23-15", "1119-155-355-15-16", "1120-499-914-22-24", "1121-739-525-23-19", "1122-171-645-12-23", "1123-506-366-29-29", "1124-226-258-21-19", "1125-259-139-21-12", "1126-172-955-20-15", "1127-562-420-17-21", "1128-15-856-29-22", "1129-674-321-17-7", "1130-445-563-29-21", "1131-414-713-10-24", "1132-304-303-19-16", "1133-692-423-27-15", "1134-943-840-19-10", "1135-296-811-12-20", "1136-477-810-18-10", "1137-785-877-27-27", "1138-946-424-23-29", "1139-99-9-26-23", "1140-551-607-22-10", "1141-47-249-26-13", "1142-807-394-24-22", "1143-702-422-29-16", "1144-549-270-21-21", "1145-753-731-10-29", "1146-457-54-17-23", "1147-582-874-27-18", "1148-693-518-12-20", "1149-286-837-16-24", "1150-384-757-10-29", "1151-748-792-16-10", "1152-332-521-13-14", "1153-497-233-21-24", "1154-769-589-18-26", "1155-710-947-18-23", "1156-359-350-27-21", "1157-964-249-10-12", "1158-423-344-21-24", "1159-404-209-22-14", "1160-716-718-25-21", "1161-669-763-13-22", "1162-106-417-25-23", "1163-320-771-28-12", "1164-217-17-24-12", "1165-503-489-27-14", "1166-51-52-27-16", "1167-785-648-20-14", "1168-501-606-25-24", "1169-343-938-14-22", "1170-186-630-14-12", "1171-493-958-20-22", "1172-315-350-18-24", "1173-839-541-26-26", "1174-343-155-16-18", "1175-548-343-13-20", "1176-50-876-21-13", "1177-340-693-18-16", "1178-283-633-23-28", "1179-946-208-13-15", "1180-246-560-21-21", "1181-914-601-16-23", "1182-983-126-10-7", "1183-778-741-19-12", "1184-650-474-26-27", "1185-350-739-27-26", "1186-13-853-10-12", "1187-306-635-25-26", "1188-583-720-23-17", "1189-972-791-21-21", "1190-361-229-24-20", "1191-699-865-17-12", "1192-856-863-22-20", "1193-498-116-27-26", "1194-670-511-17-28", "1195-128-80-21-15", "1196-393-75-19-15", "1197-958-43-20-20", "1198-318-742-29-27", "1199-586-920-14-14", "1200-615-333-12-18", "1201-559-168-23-21", "1202-384-728-19-21", "1203-486-321-18-18", "1204-963-412-17-15", "1205-269-655-26-25", "1206-103-333-21-25", "1207-746-504-19-20", "1208-603-847-19-18", "1209-914-279-7-16", "1210-319-251-13-20", "1211-419-583-29-12", "1212-542-354-13-22", "1213-120-241-14-24", "1214-864-64-12-12", "1215-92-843-28-26", "1216-271-778-9-4", "1217-690-287-20-20", "1218-114-901-15-12", "1219-905-90-15-28", "1220-823-49-18-12", "1221-685-667-18-25", "1222-221-597-26-13", "1223-251-824-22-19", "1224-353-473-12-20", "1225-952-110-16-25", "1226-523-92-17-25", "1227-518-482-23-12", "1228-609-40-11-12", "1229-393-435-13-25", "1230-292-629-13-18", "1231-414-892-20-20", "1232-29-776-14-18", "1233-609-951-17-18", "1234-478-444-22-28", "1235-562-712-22-16", "1236-225-36-23-14", "1237-700-704-21-22", "1238-540-253-22-12", "1239-893-307-15-25", "1240-610-238-26-13", "1241-436-197-22-28", "1242-808-382-13-21", "1243-85-716-26-20", "1244-983-313-13-24", "1245-131-797-29-13", "1246-16-554-18-21", "1247-918-115-22-13", "1248-425-113-28-18", "1249-144-226-27-24", "1250-8-623-18-16", "1251-373-483-10-12", "1252-223-761-16-12", "1253-178-554-26-17", "1254-181-270-21-26", "1255-411-902-11-16", "1256-365-845-22-10", "1257-827-292-10-23", "1258-642-509-16-24", "1259-166-220-29-27", "1260-653-35-16-14", "1261-333-559-16-20", "1262-488-937-15-29", "1263-111-803-21-11", "1264-486-164-28-14", "1265-738-288-13-26", "1266-796-813-12-16", "1267-325-222-29-24", "1268-503-433-10-17", "1269-384-390-13-14", "1270-388-800-16-11", "1271-799-443-17-28", "1272-28-353-16-10", "1273-168-368-10-25", "1274-60-636-29-18", "1275-176-846-25-21", "1276-396-31-24-28", "1277-839-926-10-26", "1278-517-823-18-10", "1279-533-164-27-11", "1280-740-651-11-22", "1281-620-647-10-26", "1282-425-613-13-21", "1283-262-285-27-18", "1284-925-390-23-29", "1285-825-596-11-20", "1286-975-379-11-25", "1287-18-802-13-18", "1288-827-822-20-12", "1289-57-596-27-24", "1290-619-556-29-26", "1291-781-508-27-29", "1292-892-44-12-10", "1293-334-889-10-17", "1294-418-1-27-23", "1295-376-147-26-27", "1296-936-737-29-12", "1297-213-937-17-12", "1298-931-608-27-10", "1299-307-712-18-18", "1300-350-311-19-25", "1301-57-703-26-12", "1302-574-486-10-11", "1303-447-292-29-26", "1304-479-803-25-22", "1305-318-835-3-22", "1306-831-375-15-27", "1307-817-388-10-10", "1308-413-624-3-11", "1309-9-356-13-22", "1310-445-100-27-17", "1311-782-464-24-24", "1312-279-883-19-29", "1313-963-562-28-14", "1314-490-351-28-20", "1315-75-935-16-24", "1316-395-710-18-21", "1317-166-498-25-10", "1318-899-886-13-17", "1319-926-595-12-27", "1320-699-695-21-23", "1321-446-892-13-15", "1322-384-898-10-10", "1323-137-526-12-16", "1324-564-912-16-28", "1325-577-522-14-27", "1326-37-853-25-27", "1327-373-49-27-21", "1328-546-847-26-20", "1329-753-13-23-16", "1330-454-787-27-23", "1331-588-938-17-10", "1332-201-590-28-10", "1333-689-8-11-15", "1334-14-447-28-22", "1335-893-268-20-26", "1336-631-243-23-16", "1337-950-56-11-11", "1338-861-157-22-27", "1339-229-404-19-11", "1340-20-470-26-22", "1341-262-67-23-13", "1342-529-879-23-14", "1343-186-763-21-14", "1344-408-590-26-20", "1345-781-950-11-23", "1346-831-195-11-23", "1347-592-649-13-27", "1348-321-264-28-27", "1349-913-961-20-16", "1350-975-74-23-16", "1351-852-722-25-29", "1352-972-257-24-15", "1353-339-418-11-17", "1354-534-125-25-28", "1355-13-216-15-12", "1356-216-536-8-3", "1357-10-856-10-13", "1358-455-838-19-10", "1359-963-940-21-10", "1360-461-801-22-19", "1361-903-615-23-21", "1362-16-577-20-29", "1363-30-211-10-10", "1364-304-819-20-11", "1365-475-733-12-20", "1366-413-191-24-23", "1367-436-586-15-27", "1368-561-949-15-23", "1369-738-810-13-12", "1370-546-276-24-17", "1371-959-968-22-28", "1372-542-919-12-5", "1373-800-803-27-28", "1374-157-621-13-13", "1375-968-190-16-23", "1376-793-653-19-23", "1377-275-709-27-28", "1378-29-122-14-22", "1379-930-208-28-11", "1380-290-693-25-25", "1381-252-661-20-17", "1382-891-468-22-27", "1383-260-649-17-21", "1384-789-450-10-21", "1385-153-561-15-11", "1386-5-333-15-15", "1387-17-839-12-27", "1388-962-907-17-16", "1389-210-792-14-24", "1390-380-851-14-15", "1391-270-831-17-25", "1392-476-766-25-12", "1393-212-973-21-23", "1394-155-918-23-12", "1395-478-475-9-9", "1396-305-333-18-27", "1397-888-761-25-24");

my @grid;
for(my $i = 0; $i < 1000; $i++){
    my @temp = (0)x1000;
    push(@grid, \@temp);
}

@grid = &makeClaim(\@claims, \@grid);

say countOverlap(\@grid);

sub makeClaim{
    my @claims = @{ $_[0] };

    my @grid = @{ $_[1]};

    foreach my $claim (@claims){
        my ($id, $x, $y, $width, $height) = split(/\-/, $claim);

        # say split(/\-/, $claim);

        for(my $i = $x; $i < ($x + $width); $i++){
            for(my $j = $y; $j < ($y + $height); $j++){
                $grid[$i][$j]++;
            }
        }
    }

    return @grid;
}

sub countOverlap{
    my @grid = @{ $_[0] };
    my $count = 0;

    foreach my $row (@grid){
        my @row = @{ $row };
        foreach my $cell (@row){
            if($cell > 1){
                $count++;
            }
        }
    }

    return $count;
}