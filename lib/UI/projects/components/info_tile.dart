import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  const InfoTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FittedBox(
          child: Icon(
            Icons.check_circle_outline,
            color: Colors.white.withOpacity(0.800000011920929),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: FittedBox(
            child: Text(
              'Onboarding increased to 12%.',
              style: Theme.of(context).textTheme.titleMedium!.merge(TextStyle(
                    color: Colors.white.withOpacity(0.800000011920929),
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
// {key: IPQP7IH02B, txnid: 3a9bb113-d1a0-4efc-8681-cdf37bab22dc, amount: 1.0, productinfo: vehicle, firstname: Hashiq, phone: 7559963134, email: hashiqdeveloper@gmail.com, surl: http://localhost:3000/response,
//  furl: http://localhost:3000/response, hash: 34e4683151e052becbca7268320612f13cbac0238ed80209fd2378fea2d051710f8212c146c1abd6313f3b7b3a0bc2c4894a3f18e39c3f194fae3ae7d9eaec14, udf5: 10, customer_authentication_id: 1}
// [log] {"status":1,"data":"99c40adbf53743cfb141f934acb929c34723b00f10002166027df6a474ac1c72"}
