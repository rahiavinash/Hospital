import 'package:sai_krupa_hospital/data/response/status.dart';

class ApiResponse<T>{

  Status? status;
  T? data;
  String? message;

  ApiResponse(this.status , this.data , this.message);
  ApiResponse.loading() : status =Status.LOADIG;
  ApiResponse.complete() : status =Status.COMPLETE;
  ApiResponse.error() : status =Status.ERROR;

  @override
  String toString(){
    return 'status: $status \n message: $message \n data :$data';
  }
}
