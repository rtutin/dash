#include "2chpower.h"

int dvachpower_hash(const char *input, char *output)
{
	yespower_params_t params = {
		.version = YESPOWER_1_0,
		.N = 4096,
		.r = 32,
		.pers = "Cryptoautistic algorithm",
		.perslen = 24
  };
	return yespower_tls(input, 80, &params, (yespower_binary_t *) output);
}
