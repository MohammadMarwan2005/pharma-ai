class APIConstants {
  static const String _domainUrl = "http://pharmaai.runasp.net";
  static const String baseUrl = "$_domainUrl/api";

  static const getPredictionsUrl = "$baseUrl/Classification/getList";
  static const searchMedicinesUrl = "$baseUrl/Ordering/getMedicinesSelectList";
  static const createOrderUrl = "$baseUrl/Ordering/createOrder";
}
