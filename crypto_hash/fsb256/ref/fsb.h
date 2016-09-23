#define LUI(a) (((a)-1)/(sizeof(int)<<3)+1)
#define PUI(a) ((a)/(sizeof(int)<<3))
#define MUI ((sizeof(int)<<3)-1)
#define HASHLEN 256

typedef unsigned char BitSequence;
typedef unsigned long long DataLength;

typedef enum {
  SUCCESS = 0,
  FAIL = 1,
  BAD_HASHBITLEN = 2
} HashReturn;

typedef struct {
  /* the parameters of FSB */
  unsigned int n, w, r, p; /* n multiple of w, r mulitple of 32/64 */
  /* other useful parameters to avoid recomputing */
  unsigned int b;/* number of QC blocks */
  unsigned int inputsize; /* number of input bits from the message (s-r) per round *MUST* be multiple of 8 */
  unsigned int bpc, bfiv, bfm; /* for each column : number of input bits, number from the iv, number from the message */
  /* the "first line" of matrix H */
  unsigned char *** first_line;
  /* hash length */
  int hashbitlen;
  /* current syndrome */
  unsigned char* syndrome;
  /* space to store new syndrome */
  unsigned int* new_syndrome;
  /* input buffer */
  BitSequence* buffer;
  /* number of bits in the buffer */
  unsigned int count;
  /* number of bits hashed */
  DataLength databitlen;
} hashState;

#ifdef HASHLEN
#if HASHLEN == 512
#define WEIGHT 248
#elif HASHLEN == 384
#define WEIGHT 184
#elif HASHLEN == 256
#define WEIGHT 128
#elif HASHLEN == 160
#define WEIGHT 80
#elif HASHLEN == 48
#define WEIGHT 24
#else // default value is 224
#define HASHLEN 224
#define WEIGHT 112
#endif
#endif

HashReturn Init(hashState *state, int hashbitlen);
HashReturn Update(hashState *state, const BitSequence *data, DataLength databitlen);
HashReturn Final(hashState *state, BitSequence *hashval);
HashReturn Hash(int hashbitlen, const BitSequence *data, DataLength databitlen, BitSequence *hashval);

void printHash(BitSequence* hashval, int hashbitlen);
unsigned int * computeIndex(hashState * state, int i);
void performHash(hashState* state);
void printBuffer(hashState* state);
unsigned int logarithm(unsigned int a);
