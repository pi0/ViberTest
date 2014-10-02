.class public Lcom/viber/voip/calls/ui/PhoneFragment;
.super Lcom/viber/voip/ui/h;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;
.implements Lcom/viber/voip/calls/ui/n;
.implements Lcom/viber/voip/calls/ui/r;
.implements Lcom/viber/voip/d;
.implements Lcom/viber/voip/f/h;
.implements Lcom/viber/voip/messages/orm/service/ServiceCallback;
.implements Lcom/viber/voip/widget/o;
.implements Lcom/viber/voip/widget/q;


# static fields
.field private static R:Lcom/viber/voip/calls/ui/j;

.field private static a:Lcom/viber/voip/calls/a/e;

.field private static b:Lcom/viber/voip/contacts/e/k;


# instance fields
.field private A:Lcom/viber/voip/calls/ui/KeypadButton;

.field private B:Lcom/viber/voip/calls/ui/KeypadButton;

.field private C:Landroid/widget/ImageButton;

.field private D:Landroid/widget/ImageButton;

.field private E:Landroid/widget/ImageButton;

.field private F:Ljava/lang/Object;

.field private G:Lcom/viber/voip/sound/IVibratorService;

.field private H:Lcom/viber/voip/sound/ISoundService;

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Ljava/lang/String;

.field private N:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

.field private O:Landroid/os/Handler;

.field private P:Lcom/viber/voip/util/b/w;

.field private Q:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;

.field private S:Lcom/viber/voip/calls/ui/j;

.field private T:Lcom/viber/voip/calls/ui/i;

.field private c:Lcom/viber/voip/calls/ui/p;

.field private d:Lcom/viber/voip/calls/ui/u;

.field private e:Lcom/viber/voip/ui/s;

.field private f:Lcom/viber/voip/calls/a/a;

.field private g:Lcom/viber/voip/contacts/e/a;

.field private h:Lcom/actionbarsherlock/view/MenuItem;

.field private i:Lcom/actionbarsherlock/view/MenuItem;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Lcom/viber/voip/widget/PhoneTypeField;

.field private n:Landroid/widget/ImageView;

.field private o:Lcom/viber/voip/calls/ui/KeypadButton;

.field private p:Lcom/viber/voip/calls/ui/KeypadButton;

.field private q:Lcom/viber/voip/calls/ui/KeypadButton;

.field private t:Lcom/viber/voip/calls/ui/KeypadButton;

.field private u:Lcom/viber/voip/calls/ui/KeypadButton;

.field private v:Lcom/viber/voip/calls/ui/KeypadButton;

.field private w:Lcom/viber/voip/calls/ui/KeypadButton;

.field private x:Lcom/viber/voip/calls/ui/KeypadButton;

.field private y:Lcom/viber/voip/calls/ui/KeypadButton;

.field private z:Lcom/viber/voip/calls/ui/KeypadButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/viber/voip/calls/a/e;

    invoke-direct {v0}, Lcom/viber/voip/calls/a/e;-><init>()V

    sput-object v0, Lcom/viber/voip/calls/ui/PhoneFragment;->a:Lcom/viber/voip/calls/a/e;

    .line 104
    new-instance v0, Lcom/viber/voip/contacts/e/k;

    invoke-direct {v0}, Lcom/viber/voip/contacts/e/k;-><init>()V

    sput-object v0, Lcom/viber/voip/calls/ui/PhoneFragment;->b:Lcom/viber/voip/contacts/e/k;

    .line 194
    new-instance v0, Lcom/viber/voip/calls/ui/a;

    invoke-direct {v0}, Lcom/viber/voip/calls/ui/a;-><init>()V

    sput-object v0, Lcom/viber/voip/calls/ui/PhoneFragment;->R:Lcom/viber/voip/calls/ui/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/h;-><init>(I)V

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->F:Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->O:Landroid/os/Handler;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->Q:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;

    .line 202
    sget-object v0, Lcom/viber/voip/calls/ui/PhoneFragment;->R:Lcom/viber/voip/calls/ui/j;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->S:Lcom/viber/voip/calls/ui/j;

    .line 206
    return-void
.end method

.method private a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 239
    const v0, 0x7f07035c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/PhoneTypeField;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    .line 240
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhoneTypeField;->requestFocus()Z

    .line 241
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v0, v2}, Lcom/viber/voip/widget/PhoneTypeField;->setInputType(I)V

    .line 242
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v0, p0}, Lcom/viber/voip/widget/PhoneTypeField;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v0, p0}, Lcom/viber/voip/widget/PhoneTypeField;->setContactLookupListener(Lcom/viber/voip/widget/o;)V

    .line 244
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v0, p0}, Lcom/viber/voip/widget/PhoneTypeField;->setPhoneFieldTextChangeListener(Lcom/viber/voip/widget/q;)V

    .line 245
    const v0, 0x7f070155

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->n:Landroid/widget/ImageView;

    .line 246
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    const v0, 0x7f0700ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->k:Landroid/view/View;

    .line 250
    const v0, 0x7f0700ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->l:Landroid/view/View;

    .line 252
    if-eqz p2, :cond_3

    const-string/jumbo v0, "show_keyboard"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "number"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 255
    :goto_0
    if-eqz v0, :cond_0

    const-string/jumbo v0, "show_keyboard"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const-string/jumbo v0, "number"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :cond_0
    const v0, 0x7f0700ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 262
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 263
    const v4, 0x7f07012b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    const v4, 0x7f070129

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    :cond_1
    :goto_1
    const v0, 0x7f070224

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/ui/KeypadButton;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->o:Lcom/viber/voip/calls/ui/KeypadButton;

    .line 272
    const v0, 0x7f070225

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/ui/KeypadButton;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->p:Lcom/viber/voip/calls/ui/KeypadButton;

    .line 273
    const v0, 0x7f070226

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/ui/KeypadButton;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->q:Lcom/viber/voip/calls/ui/KeypadButton;

    .line 274
    const v0, 0x7f070227

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/ui/KeypadButton;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->t:Lcom/viber/voip/calls/ui/KeypadButton;

    .line 275
    const v0, 0x7f070228

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/ui/KeypadButton;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->u:Lcom/viber/voip/calls/ui/KeypadButton;

    .line 276
    const v0, 0x7f070229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/ui/KeypadButton;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->v:Lcom/viber/voip/calls/ui/KeypadButton;

    .line 277
    const v0, 0x7f07022a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/ui/KeypadButton;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->w:Lcom/viber/voip/calls/ui/KeypadButton;

    .line 278
    const v0, 0x7f07022b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/ui/KeypadButton;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->x:Lcom/viber/voip/calls/ui/KeypadButton;

    .line 279
    const v0, 0x7f07022c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/ui/KeypadButton;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->y:Lcom/viber/voip/calls/ui/KeypadButton;

    .line 280
    const v0, 0x7f07022d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/ui/KeypadButton;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->z:Lcom/viber/voip/calls/ui/KeypadButton;

    .line 281
    const v0, 0x7f07022e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/ui/KeypadButton;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->B:Lcom/viber/voip/calls/ui/KeypadButton;

    .line 282
    const v0, 0x7f0700b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/ui/KeypadButton;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->A:Lcom/viber/voip/calls/ui/KeypadButton;

    .line 283
    const v0, 0x7f07022f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->E:Landroid/widget/ImageButton;

    .line 284
    const v0, 0x7f070230

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->D:Landroid/widget/ImageButton;

    .line 285
    const v0, 0x7f070231

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->C:Landroid/widget/ImageButton;

    .line 287
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->o:Lcom/viber/voip/calls/ui/KeypadButton;

    new-instance v4, Lcom/viber/voip/calls/ui/k;

    const-string/jumbo v5, "1"

    invoke-direct {v4, p0, v5, v3}, Lcom/viber/voip/calls/ui/k;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Lcom/viber/voip/calls/ui/KeypadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->p:Lcom/viber/voip/calls/ui/KeypadButton;

    new-instance v3, Lcom/viber/voip/calls/ui/k;

    const-string/jumbo v4, "2"

    const/4 v5, 0x2

    invoke-direct {v3, p0, v4, v5}, Lcom/viber/voip/calls/ui/k;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/viber/voip/calls/ui/KeypadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->q:Lcom/viber/voip/calls/ui/KeypadButton;

    new-instance v3, Lcom/viber/voip/calls/ui/k;

    const-string/jumbo v4, "3"

    const/4 v5, 0x3

    invoke-direct {v3, p0, v4, v5}, Lcom/viber/voip/calls/ui/k;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/viber/voip/calls/ui/KeypadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->t:Lcom/viber/voip/calls/ui/KeypadButton;

    new-instance v3, Lcom/viber/voip/calls/ui/k;

    const-string/jumbo v4, "4"

    const/4 v5, 0x4

    invoke-direct {v3, p0, v4, v5}, Lcom/viber/voip/calls/ui/k;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/viber/voip/calls/ui/KeypadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->u:Lcom/viber/voip/calls/ui/KeypadButton;

    new-instance v3, Lcom/viber/voip/calls/ui/k;

    const-string/jumbo v4, "5"

    const/4 v5, 0x5

    invoke-direct {v3, p0, v4, v5}, Lcom/viber/voip/calls/ui/k;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/viber/voip/calls/ui/KeypadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->v:Lcom/viber/voip/calls/ui/KeypadButton;

    new-instance v3, Lcom/viber/voip/calls/ui/k;

    const-string/jumbo v4, "6"

    const/4 v5, 0x6

    invoke-direct {v3, p0, v4, v5}, Lcom/viber/voip/calls/ui/k;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/viber/voip/calls/ui/KeypadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->w:Lcom/viber/voip/calls/ui/KeypadButton;

    new-instance v3, Lcom/viber/voip/calls/ui/k;

    const-string/jumbo v4, "7"

    const/4 v5, 0x7

    invoke-direct {v3, p0, v4, v5}, Lcom/viber/voip/calls/ui/k;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/viber/voip/calls/ui/KeypadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->x:Lcom/viber/voip/calls/ui/KeypadButton;

    new-instance v3, Lcom/viber/voip/calls/ui/k;

    const-string/jumbo v4, "8"

    invoke-direct {v3, p0, v4, v1}, Lcom/viber/voip/calls/ui/k;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/viber/voip/calls/ui/KeypadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->y:Lcom/viber/voip/calls/ui/KeypadButton;

    new-instance v3, Lcom/viber/voip/calls/ui/k;

    const-string/jumbo v4, "9"

    const/16 v5, 0x9

    invoke-direct {v3, p0, v4, v5}, Lcom/viber/voip/calls/ui/k;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/viber/voip/calls/ui/KeypadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->z:Lcom/viber/voip/calls/ui/KeypadButton;

    new-instance v3, Lcom/viber/voip/calls/ui/k;

    const-string/jumbo v4, "0"

    invoke-direct {v3, p0, v4, v2}, Lcom/viber/voip/calls/ui/k;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/viber/voip/calls/ui/KeypadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->A:Lcom/viber/voip/calls/ui/KeypadButton;

    new-instance v3, Lcom/viber/voip/calls/ui/k;

    const-string/jumbo v4, "*"

    const/16 v5, 0xa

    invoke-direct {v3, p0, v4, v5}, Lcom/viber/voip/calls/ui/k;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/viber/voip/calls/ui/KeypadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->B:Lcom/viber/voip/calls/ui/KeypadButton;

    new-instance v3, Lcom/viber/voip/calls/ui/k;

    const-string/jumbo v4, "#"

    const/16 v5, 0xb

    invoke-direct {v3, p0, v4, v5}, Lcom/viber/voip/calls/ui/k;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/viber/voip/calls/ui/KeypadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->z:Lcom/viber/voip/calls/ui/KeypadButton;

    new-instance v3, Lcom/viber/voip/calls/ui/b;

    invoke-direct {v3, p0}, Lcom/viber/voip/calls/ui/b;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;)V

    invoke-virtual {v0, v3}, Lcom/viber/voip/calls/ui/KeypadButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->C:Landroid/widget/ImageButton;

    new-instance v3, Lcom/viber/voip/calls/ui/c;

    invoke-direct {v3, p0}, Lcom/viber/voip/calls/ui/c;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->C:Landroid/widget/ImageButton;

    new-instance v3, Lcom/viber/voip/calls/ui/d;

    invoke-direct {v3, p0}, Lcom/viber/voip/calls/ui/d;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->D:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 340
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->D:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setLongClickable(Z)V

    .line 342
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->D:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v3, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->E:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->E:Landroid/widget/ImageButton;

    new-instance v1, Lcom/viber/voip/calls/ui/e;

    invoke-direct {v1, p0}, Lcom/viber/voip/calls/ui/e;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    new-instance v1, Lcom/viber/voip/calls/ui/f;

    invoke-direct {v1, p0}, Lcom/viber/voip/calls/ui/f;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/PhoneTypeField;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 381
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 385
    :cond_2
    new-instance v0, Lcom/viber/voip/ui/s;

    invoke-direct {v0}, Lcom/viber/voip/ui/s;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->e:Lcom/viber/voip/ui/s;

    .line 386
    return-void

    :cond_3
    move v0, v2

    .line 252
    goto/16 :goto_0

    .line 265
    :cond_4
    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 344
    goto :goto_2
.end method

.method static synthetic a(Lcom/viber/voip/calls/ui/PhoneFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->o()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/calls/ui/PhoneFragment;Lcom/viber/voip/calls/ui/i;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Lcom/viber/voip/calls/ui/i;Z)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/calls/ui/PhoneFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/viber/voip/calls/ui/PhoneFragment;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/viber/voip/calls/ui/i;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1078
    new-instance v2, Lcom/viber/voip/calls/ui/h;

    invoke-direct {v2, p0, p1, p2}, Lcom/viber/voip/calls/ui/h;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;Lcom/viber/voip/calls/ui/i;Z)V

    .line 1084
    if-eqz p1, :cond_1

    .line 1085
    const-string/jumbo v1, ""

    .line 1086
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->d:Lcom/viber/voip/calls/ui/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->d:Lcom/viber/voip/calls/ui/u;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/u;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->d:Lcom/viber/voip/calls/ui/u;

    invoke-virtual {v0, v4}, Lcom/viber/voip/calls/ui/u;->b(I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 1094
    :goto_0
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v1

    invoke-static {p1}, Lcom/viber/voip/calls/ui/i;->b(Lcom/viber/voip/calls/ui/i;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/viber/voip/viberout/e;->b(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1}, Lcom/viber/voip/calls/ui/i;->a(Lcom/viber/voip/calls/ui/i;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3, v4, v2}, Lcom/viber/voip/block/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 1099
    :goto_1
    return-void

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->c:Lcom/viber/voip/calls/ui/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->c:Lcom/viber/voip/calls/ui/p;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/p;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1089
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->c:Lcom/viber/voip/calls/ui/p;

    invoke-virtual {v0, v4}, Lcom/viber/voip/calls/ui/p;->b(I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    invoke-interface {v0}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->c()Lcom/viber/voip/contacts/b/b;

    move-result-object v0

    .line 1090
    if-eqz v0, :cond_2

    .line 1091
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1097
    :cond_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/viber/voip/messages/orm/service/EntityService;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/messages/orm/service/EntityService",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 795
    instance-of v0, p1, Lcom/viber/voip/calls/a/a;

    if-eqz v0, :cond_3

    .line 796
    iput-boolean v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->K:Z

    .line 801
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->K:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->L:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->c:Lcom/viber/voip/calls/ui/p;

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->c:Lcom/viber/voip/calls/ui/p;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/p;->notifyDataSetChanged()V

    .line 803
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->d:Lcom/viber/voip/calls/ui/u;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/u;->notifyDataSetChanged()V

    .line 805
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/calls/a/a;->isInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 806
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->e:Lcom/viber/voip/ui/s;

    invoke-direct {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/s;->a(Ljava/lang/String;)V

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->N:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->N:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 811
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->w()V

    .line 814
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->i()V

    .line 815
    return-void

    .line 797
    :cond_3
    instance-of v0, p1, Lcom/viber/voip/contacts/e/a;

    if-eqz v0, :cond_0

    .line 798
    iput-boolean v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->L:Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1008
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gn;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1075
    :goto_0
    return-void

    .line 1013
    :cond_0
    const-string/jumbo v0, "[^*0-9]+"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1014
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v6, v5

    .line 1017
    :goto_1
    if-eqz v6, :cond_3

    .line 1018
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tel:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1019
    invoke-virtual {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    move v6, v1

    .line 1014
    goto :goto_1

    .line 1023
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_6

    move v0, v5

    .line 1024
    :goto_2
    iget-object v2, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v2}, Lcom/viber/voip/widget/PhoneTypeField;->getPhoneTypeText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v7, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v7}, Lcom/viber/voip/widget/PhoneTypeField;->getPhoneTypeText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_7

    move v2, v5

    .line 1027
    :goto_3
    sget-object v7, Lcom/viber/voip/util/fq;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v7}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/viber/voip/util/fq;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v7}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_4
    move v3, v5

    .line 1030
    :goto_4
    if-nez v6, :cond_5

    if-nez v0, :cond_5

    if-nez v2, :cond_5

    if-eqz v3, :cond_9

    :cond_5
    move v0, v5

    .line 1033
    :goto_5
    if-eqz v0, :cond_b

    .line 1034
    new-instance v0, Lcom/viber/voip/calls/ui/i;

    invoke-direct {v0, p0, v4}, Lcom/viber/voip/calls/ui/i;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;Lcom/viber/voip/calls/ui/a;)V

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->T:Lcom/viber/voip/calls/ui/i;

    .line 1035
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->T:Lcom/viber/voip/calls/ui/i;

    invoke-static {v0, p1}, Lcom/viber/voip/calls/ui/i;->a(Lcom/viber/voip/calls/ui/i;Ljava/lang/String;)Ljava/lang/String;

    .line 1036
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/viberout/e;->b(Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->T:Lcom/viber/voip/calls/ui/i;

    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/viber/voip/viberout/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/viber/voip/calls/ui/i;->b(Lcom/viber/voip/calls/ui/i;Ljava/lang/String;)Ljava/lang/String;

    .line 1038
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->T:Lcom/viber/voip/calls/ui/i;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/viber/voip/calls/ui/i;->a(Lcom/viber/voip/calls/ui/i;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1039
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->T:Lcom/viber/voip/calls/ui/i;

    invoke-static {v0, p4}, Lcom/viber/voip/calls/ui/i;->c(Lcom/viber/voip/calls/ui/i;Ljava/lang/String;)Ljava/lang/String;

    .line 1041
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/viberout/e;->b()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1042
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->T:Lcom/viber/voip/calls/ui/i;

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Lcom/viber/voip/calls/ui/i;Z)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 1023
    goto/16 :goto_2

    :cond_7
    move v2, v1

    .line 1024
    goto :goto_3

    :cond_8
    move v3, v1

    .line 1027
    goto :goto_4

    :cond_9
    move v0, v1

    .line 1030
    goto :goto_5

    .line 1046
    :cond_a
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/calls/ui/g;

    invoke-direct {v1, p0, p3, p2}, Lcom/viber/voip/calls/ui/g;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;ZZ)V

    invoke-static {v0, p1, v1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Lcom/viber/voip/util/hj;)V

    goto/16 :goto_0

    .line 1070
    :cond_b
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/PhoneTypeField;->setPhoneFieldText(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c038f

    invoke-virtual {p0, v1}, Lcom/viber/voip/calls/ui/PhoneFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c04f9

    invoke-virtual {p0, v2}, Lcom/viber/voip/calls/ui/PhoneFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0333

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;Z)Landroid/content/DialogInterface;

    goto/16 :goto_0
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 600
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 601
    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/viber/voip/util/gl;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 602
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->h:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 603
    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->i:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v1, p1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 604
    invoke-virtual {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->setMenuVisibility(Z)V

    .line 605
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->c()V

    .line 608
    :cond_0
    return-void

    .line 601
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/calls/ui/PhoneFragment;)Lcom/viber/voip/widget/PhoneTypeField;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/calls/ui/PhoneFragment;Lcom/viber/voip/calls/ui/i;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/calls/ui/PhoneFragment;->b(Lcom/viber/voip/calls/ui/i;Z)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/calls/ui/PhoneFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/viber/voip/calls/ui/PhoneFragment;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/viber/voip/calls/ui/i;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1102
    invoke-direct {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->o()V

    .line 1103
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/viber/voip/calls/ui/i;->a(Lcom/viber/voip/calls/ui/i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1104
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-static {p1}, Lcom/viber/voip/calls/ui/i;->c(Lcom/viber/voip/calls/ui/i;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/viber/voip/a/a;->v:Lcom/viber/voip/a/g;

    invoke-virtual {v0, p2}, Lcom/viber/voip/a/g;->d(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 1107
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CALL"

    const-string/jumbo v2, "tel"

    invoke-static {p1}, Lcom/viber/voip/calls/ui/i;->a(Lcom/viber/voip/calls/ui/i;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1108
    invoke-static {p1}, Lcom/viber/voip/calls/ui/i;->d(Lcom/viber/voip/calls/ui/i;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1109
    const-string/jumbo v1, "prev_action"

    invoke-static {p1}, Lcom/viber/voip/calls/ui/i;->d(Lcom/viber/voip/calls/ui/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    :cond_0
    const-string/jumbo v1, "viber_out"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1112
    const-string/jumbo v1, "from_dialpad"

    invoke-static {p1}, Lcom/viber/voip/calls/ui/i;->c(Lcom/viber/voip/calls/ui/i;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1113
    const-string/jumbo v1, "number_status"

    invoke-static {p1}, Lcom/viber/voip/calls/ui/i;->e(Lcom/viber/voip/calls/ui/i;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1114
    const-string/jumbo v1, "canonized_number"

    invoke-static {p1}, Lcom/viber/voip/calls/ui/i;->f(Lcom/viber/voip/calls/ui/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1115
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/viber/service/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1117
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1118
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1120
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->m()V

    .line 1122
    :cond_2
    return-void

    .line 1104
    :cond_3
    sget-object v0, Lcom/viber/voip/a/a;->v:Lcom/viber/voip/a/g;

    invoke-virtual {v0, p2}, Lcom/viber/voip/a/g;->c(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 403
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 405
    const-string/jumbo v0, "[-.]*"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->e:Lcom/viber/voip/ui/s;

    invoke-virtual {v1, v0}, Lcom/viber/voip/ui/s;->b(Ljava/lang/String;)V

    .line 412
    iput-boolean v2, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->L:Z

    .line 413
    iput-boolean v2, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->K:Z

    .line 415
    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->g:Lcom/viber/voip/contacts/e/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->g:Lcom/viber/voip/contacts/e/a;

    invoke-virtual {v1, v0}, Lcom/viber/voip/contacts/e/a;->a(Ljava/lang/String;)V

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->d:Lcom/viber/voip/calls/ui/u;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->d:Lcom/viber/voip/calls/ui/u;

    invoke-virtual {v1, v0}, Lcom/viber/voip/calls/ui/u;->a(Ljava/lang/String;)V

    .line 417
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    invoke-virtual {v1, v0}, Lcom/viber/voip/calls/a/a;->a(Ljava/lang/String;)V

    .line 418
    :cond_3
    return-void
.end method

.method private c(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 766
    if-gez p1, :cond_0

    move p1, v0

    .line 772
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    invoke-virtual {v1, p1}, Lcom/viber/voip/calls/a/a;->a(I)Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    move-result-object v1

    .line 773
    if-eqz v1, :cond_1

    .line 774
    invoke-interface {v1}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 776
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/calls/ui/PhoneFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->m()V

    return-void
.end method

.method static synthetic c(Lcom/viber/voip/calls/ui/PhoneFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/viber/voip/calls/ui/PhoneFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1125
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1, p1}, Lcom/viber/voip/util/gu;->a(Landroid/app/Activity;ILjava/lang/String;)V

    .line 1126
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/calls/ui/PhoneFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->p()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1129
    const/4 v0, 0x3

    const-string/jumbo v1, "PhoneFragment"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1130
    return-void
.end method

.method static synthetic e(Lcom/viber/voip/calls/ui/PhoneFragment;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->C:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1209
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->f(I)Z

    .line 1210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/PhoneTypeField;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/viber/voip/calls/ui/PhoneFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->j()V

    return-void
.end method

.method private f(I)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 847
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 893
    :cond_0
    :goto_0
    return v2

    .line 849
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->h:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    .line 851
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v7

    .line 852
    if-nez p1, :cond_a

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_a

    move v6, v1

    .line 853
    :goto_1
    if-ne p1, v8, :cond_b

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhoneTypeField;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_2
    move v4, v1

    .line 856
    :goto_2
    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_c

    move v5, v1

    .line 857
    :goto_3
    if-eq p1, v8, :cond_3

    if-ne p1, v1, :cond_d

    :cond_3
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    .line 862
    :goto_4
    invoke-static {v7}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v7}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 863
    :cond_4
    if-eqz v6, :cond_e

    .line 864
    iget-object v4, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->k:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    move v4, v1

    .line 873
    :goto_5
    if-nez v5, :cond_5

    if-eqz v0, :cond_12

    .line 874
    :cond_5
    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhoneTypeField;->requestFocus()Z

    .line 876
    :cond_6
    invoke-static {v7}, Lcom/viber/voip/util/gl;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 877
    if-nez v5, :cond_f

    move v0, v1

    :goto_6
    invoke-direct {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Z)V

    .line 880
    :cond_7
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 881
    :cond_8
    if-eqz v5, :cond_9

    .line 882
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v4, Lcom/viber/voip/a/a;->g:Lcom/viber/voip/a/ae;

    invoke-virtual {v4}, Lcom/viber/voip/a/ae;->c()Lcom/viber/voip/a/x;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 885
    :cond_9
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->l:Landroid/view/View;

    if-eqz v5, :cond_10

    :goto_7
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 886
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->i()V

    .line 887
    iget-object v2, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v5, :cond_11

    const v0, 0x7f04000e

    :goto_8
    invoke-static {v3, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_9
    move v2, v1

    .line 893
    goto/16 :goto_0

    :cond_a
    move v6, v2

    .line 852
    goto/16 :goto_1

    :cond_b
    move v4, v2

    .line 853
    goto/16 :goto_2

    :cond_c
    move v5, v2

    .line 856
    goto/16 :goto_3

    :cond_d
    move v0, v2

    .line 857
    goto :goto_4

    .line 866
    :cond_e
    if-eqz v4, :cond_13

    .line 867
    iget-object v4, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->k:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 868
    iget-object v4, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    const-string/jumbo v6, ""

    invoke-virtual {v4, v6}, Lcom/viber/voip/widget/PhoneTypeField;->setText(Ljava/lang/CharSequence;)V

    move v4, v1

    .line 869
    goto :goto_5

    :cond_f
    move v0, v2

    .line 877
    goto :goto_6

    :cond_10
    move v2, v3

    .line 885
    goto :goto_7

    .line 887
    :cond_11
    const v0, 0x7f04000f

    goto :goto_8

    :cond_12
    move v1, v4

    goto :goto_9

    :cond_13
    move v4, v2

    goto :goto_5
.end method

.method static synthetic g(Lcom/viber/voip/calls/ui/PhoneFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->O:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/viber/voip/calls/ui/PhoneFragment;)Lcom/viber/voip/calls/ui/i;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->T:Lcom/viber/voip/calls/ui/i;

    return-object v0
.end method

.method static synthetic i(Lcom/viber/voip/calls/ui/PhoneFragment;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->D:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 395
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhoneTypeField;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 399
    :goto_0
    iget-object v2, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->n:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    return-void

    :cond_0
    move v0, v1

    .line 395
    goto :goto_0

    .line 399
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private k()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 437
    new-instance v2, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    iget-object v3, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    iget-object v4, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->Q:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;-><init>(Lcom/viber/voip/calls/ui/n;Lcom/viber/voip/calls/ui/PhoneFragment;Lcom/viber/voip/calls/a/a;Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;)V

    iput-object v2, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->N:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    .line 438
    iget-object v2, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->N:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->x()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a(I)V

    .line 440
    new-instance v2, Lcom/a/a/a/a;

    invoke-direct {v2}, Lcom/a/a/a/a;-><init>()V

    .line 442
    new-instance v3, Lcom/viber/voip/calls/ui/u;

    iget-object v4, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->g:Lcom/viber/voip/contacts/e/a;

    invoke-direct {v3, p0, v4}, Lcom/viber/voip/calls/ui/u;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;Lcom/viber/voip/contacts/e/a;)V

    iput-object v3, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->d:Lcom/viber/voip/calls/ui/u;

    .line 443
    iget-object v3, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->d:Lcom/viber/voip/calls/ui/u;

    invoke-virtual {v3, p0}, Lcom/viber/voip/calls/ui/u;->a(Lcom/viber/voip/calls/ui/r;)V

    .line 445
    new-instance v3, Lcom/viber/voip/calls/ui/p;

    iget-object v4, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    iget-object v5, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->d:Lcom/viber/voip/calls/ui/u;

    iget-object v6, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->N:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/viber/voip/calls/ui/p;-><init>(Lcom/viber/voip/calls/ui/PhoneFragment;Lcom/viber/voip/calls/a/a;Lcom/viber/voip/calls/ui/u;Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;)V

    iput-object v3, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->c:Lcom/viber/voip/calls/ui/p;

    .line 446
    iget-object v3, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->c:Lcom/viber/voip/calls/ui/p;

    invoke-virtual {v3, p0}, Lcom/viber/voip/calls/ui/p;->a(Lcom/viber/voip/calls/ui/r;)V

    .line 447
    iget-object v3, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->c:Lcom/viber/voip/calls/ui/p;

    invoke-virtual {v2, v3}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;)V

    .line 448
    iget-object v3, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->d:Lcom/viber/voip/calls/ui/u;

    invoke-virtual {v2, v3}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;)V

    .line 451
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 452
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 453
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 454
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 455
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 456
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_1

    .line 458
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/viber/voip/util/gl;->a(Landroid/widget/ListView;I)V

    .line 461
    :cond_1
    invoke-virtual {p0, v2}, Lcom/viber/voip/calls/ui/PhoneFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 462
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 755
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->T:Lcom/viber/voip/calls/ui/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhoneTypeField;->getPhoneTypeText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->T:Lcom/viber/voip/calls/ui/i;

    invoke-static {v1}, Lcom/viber/voip/calls/ui/i;->a(Lcom/viber/voip/calls/ui/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/PhoneTypeField;->setPhoneFieldText(Ljava/lang/String;)V

    .line 763
    :goto_0
    return-void

    .line 759
    :cond_0
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v1}, Lcom/viber/voip/widget/PhoneTypeField;->getPhoneTypeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/e;->b(Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhoneTypeField;->getPhoneTypeText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 761
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 762
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_0
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 929
    iget-object v3, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->C:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhoneTypeField;->getPhoneFieldLength()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 930
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->E:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v3}, Lcom/viber/voip/widget/PhoneTypeField;->getPhoneFieldLength()I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 931
    return-void

    :cond_0
    move v0, v2

    .line 929
    goto :goto_0

    :cond_1
    move v1, v2

    .line 930
    goto :goto_1
.end method

.method private n()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 965
    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->H:Lcom/viber/voip/sound/ISoundService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->H:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1, v0}, Lcom/viber/voip/sound/ISoundService;->shouldVibrate(I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 969
    iget-boolean v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->J:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    const-string/jumbo v0, "vibrateShort"

    invoke-direct {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->d(Ljava/lang/String;)V

    .line 972
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->G:Lcom/viber/voip/sound/IVibratorService;

    const-wide/16 v1, 0x23

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/sound/IVibratorService;->vibrate(J)V

    .line 974
    :cond_0
    return-void
.end method

.method private p()V
    .locals 3

    .prologue
    .line 977
    iget-boolean v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->J:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    const-string/jumbo v0, "vibrateLong"

    invoke-direct {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->d(Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->G:Lcom/viber/voip/sound/IVibratorService;

    const-wide/16 v1, 0xc8

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/sound/IVibratorService;->vibrate(J)V

    .line 982
    :cond_0
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1139
    return-void
.end method

.method private r()Z
    .locals 1

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/calls/a/a;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method protected a(I)V
    .locals 1
    .parameter

    .prologue
    .line 475
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->S:Lcom/viber/voip/calls/ui/j;

    invoke-interface {v0, p1, p0}, Lcom/viber/voip/calls/ui/j;->a(ILandroid/support/v4/app/Fragment;)V

    .line 476
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 1199
    const-string/jumbo v0, "open_keypad_number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    const-string/jumbo v0, "open_keypad_number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1201
    invoke-direct {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->e(Ljava/lang/String;)V

    .line 1202
    invoke-direct {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    const-string/jumbo v0, "open_keypad_number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1206
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 480
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->E:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 481
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1244
    const/4 v0, 0x0

    sget-object v1, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    iget-object v1, v1, Lcom/viber/voip/a/l;->c:Lcom/viber/voip/a/k;

    invoke-virtual {v1}, Lcom/viber/voip/a/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 1245
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 565
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 566
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 567
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 568
    iget-object v3, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    invoke-virtual {v3, v0}, Lcom/viber/voip/calls/a/a;->a(I)Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 570
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRecentCallsManager()Lcom/viber/voip/calls/u;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/calls/u;->a(Ljava/util/Collection;Lcom/viber/voip/calls/y;)V

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->N:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->e()V

    .line 574
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/calls/a/a;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/calls/a/a;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->E:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 486
    return-void
.end method

.method b(I)V
    .locals 3
    .parameter

    .prologue
    .line 944
    iget-boolean v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->I:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->H:Lcom/viber/voip/sound/ISoundService;

    if-nez v0, :cond_1

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->H:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getRingerMode()I

    move-result v0

    .line 954
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 959
    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->F:Ljava/lang/Object;

    monitor-enter v1

    .line 960
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->H:Lcom/viber/voip/sound/ISoundService;

    const/16 v2, 0x96

    invoke-interface {v0, p1, v2}, Lcom/viber/voip/sound/ISoundService;->playDTMFTone(II)V

    .line 961
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/calls/a/a;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 580
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->c:Lcom/viber/voip/calls/ui/p;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/p;->notifyDataSetChanged()V

    .line 585
    return-void
.end method

.method public e(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1289
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1301
    :cond_0
    :goto_0
    return-void

    .line 1292
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1293
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    if-nez v1, :cond_2

    .line 1294
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1295
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 1296
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setClipToPadding(Z)V

    goto :goto_0

    .line 1297
    :cond_2
    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1298
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 1299
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    goto :goto_0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 1159
    invoke-direct {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->m()V

    .line 1160
    return-void
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 1180
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected h()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1185
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->e:Lcom/viber/voip/ui/s;

    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p0, p0}, Lcom/viber/voip/ui/s;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnCreateContextMenuListener;Landroid/view/View$OnTouchListener;)Z

    .line 1186
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->e:Lcom/viber/voip/ui/s;

    invoke-direct {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/viber/voip/ui/s;->a(ZLjava/lang/String;)V

    .line 1188
    sget-object v0, Lcom/viber/voip/calls/ui/PhoneFragment;->a:Lcom/viber/voip/calls/a/e;

    invoke-virtual {v0, v2}, Lcom/viber/voip/calls/a/e;->getServiceWrapper(I)Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->getInstance(Lcom/viber/voip/messages/orm/service/ServiceCallback;)Lcom/viber/voip/messages/orm/service/EntityService;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/a/a;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    .line 1189
    sget-object v0, Lcom/viber/voip/calls/ui/PhoneFragment;->b:Lcom/viber/voip/contacts/e/k;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/e/k;->getServiceWrapper(I)Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->getInstance(Lcom/viber/voip/messages/orm/service/ServiceCallback;)Lcom/viber/voip/messages/orm/service/EntityService;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/e/a;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->g:Lcom/viber/voip/contacts/e/a;

    .line 1190
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v2}, Lcom/viber/voip/widget/PhoneTypeField;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/calls/a/a;->a(ILjava/lang/String;)V

    .line 1191
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->g:Lcom/viber/voip/contacts/e/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/e/a;->c(I)V

    .line 1193
    invoke-direct {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->k()V

    .line 1195
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhoneTypeField;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->b(Ljava/lang/String;)V

    .line 1196
    return-void
.end method

.method protected i()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1273
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPromoHandler()Lcom/viber/voip/f/j;

    move-result-object v0

    .line 1274
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getPromoHandler()Lcom/viber/voip/f/j;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/viber/voip/f/j;->c(Z)V

    .line 1275
    invoke-virtual {v0}, Lcom/viber/voip/f/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1276
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1277
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, v1, Lcom/viber/voip/HomeActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    move-object v0, v1

    check-cast v0, Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->b()I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->l:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->N:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->N:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 1282
    :goto_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getPromoHandler()Lcom/viber/voip/f/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/f/j;->a(Z)V

    .line 1285
    :cond_0
    return-void

    .line 1279
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialized(Lcom/viber/jni/controller/PhoneController;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->H:Lcom/viber/voip/sound/ISoundService;

    .line 229
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->H:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getVibratorService()Lcom/viber/voip/sound/IVibratorService;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->G:Lcom/viber/voip/sound/IVibratorService;

    .line 230
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getCurrentCall()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    .line 232
    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->H:Lcom/viber/voip/sound/ISoundService;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->s()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/viber/voip/sound/ISoundService;->setSpeakerphoneOn(Z)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->H:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->setSpeakerphoneOn(Z)V

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 1134
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityBackPressed()Z
    .locals 1

    .prologue
    .line 824
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->f(I)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 422
    invoke-super {p0, p1}, Lcom/viber/voip/ui/h;->onActivityCreated(Landroid/os/Bundle;)V

    .line 423
    if-eqz p1, :cond_1

    .line 424
    const-string/jumbo v0, "edit_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->M:Ljava/lang/String;

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityCreated number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->d(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->M:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/PhoneTypeField;->setPhoneFieldText(Ljava/lang/String;)V

    .line 431
    :cond_0
    const-string/jumbo v0, "mode_manager"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->Q:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;

    .line 433
    :cond_1
    return-void
.end method

.method public onActivityKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 829
    packed-switch p1, :pswitch_data_0

    .line 835
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 831
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->c(I)V

    .line 832
    const/4 v0, 0x1

    goto :goto_0

    .line 829
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 997
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/ui/h;->onActivityResult(IILandroid/content/Intent;)V

    .line 999
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 1000
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhoneTypeField;->b()V

    .line 1004
    :cond_0
    return-void
.end method

.method public onActivitySearchRequested()Z
    .locals 1

    .prologue
    .line 819
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 1143
    invoke-super {p0, p1}, Lcom/viber/voip/ui/h;->onAttach(Landroid/app/Activity;)V

    .line 1144
    instance-of v0, p1, Lcom/viber/voip/calls/ui/j;

    if-nez v0, :cond_0

    .line 1145
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "Activity must implement fragment\'s callbacks."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1148
    :cond_0
    check-cast p1, Lcom/viber/voip/calls/ui/j;

    iput-object p1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->S:Lcom/viber/voip/calls/ui/j;

    .line 1149
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onClick view.getId():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",query:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/calls/a/a;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->d(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 713
    :cond_0
    :goto_1
    return-void

    .line 673
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 677
    :sswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.YOU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 680
    :catch_0
    move-exception v0

    goto :goto_1

    .line 686
    :sswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->f(I)Z

    goto :goto_1

    .line 690
    :sswitch_2
    invoke-direct {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->l()V

    goto :goto_1

    .line 694
    :sswitch_3
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    if-eqz v0, :cond_0

    .line 695
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 696
    invoke-direct {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->l()V

    goto :goto_1

    .line 698
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/calls/a/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 700
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->g:Lcom/viber/voip/a/ae;

    invoke-virtual {v2}, Lcom/viber/voip/a/ae;->d()Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 701
    invoke-direct {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 707
    :sswitch_4
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhoneTypeField;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/PhoneTypeField;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhoneTypeField;->requestFocus()Z

    goto :goto_1

    .line 674
    :sswitch_data_0
    .sparse-switch
        0x7f0700af -> :sswitch_3
        0x7f0700d6 -> :sswitch_3
        0x7f0700f1 -> :sswitch_2
        0x7f070129 -> :sswitch_1
        0x7f07012b -> :sswitch_0
        0x7f070155 -> :sswitch_4
        0x7f070230 -> :sswitch_2
        0x7f07035b -> :sswitch_0
        0x7f07035c -> :sswitch_1
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 1225
    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->T:Lcom/viber/voip/calls/ui/i;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f07045e

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Lcom/viber/voip/calls/ui/i;Z)V

    .line 1226
    invoke-super {p0, p1}, Lcom/viber/voip/ui/h;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/viber/voip/ui/h;->onCreate(Landroid/os/Bundle;)V

    .line 212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->setHasOptionsMenu(Z)V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->G:Lcom/viber/voip/sound/IVibratorService;

    .line 216
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->P:Lcom/viber/voip/util/b/w;

    .line 217
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 391
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/ui/h;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 392
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v1, 0x7f0202fb

    const v2, 0x7f0202fa

    .line 612
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    const-string/jumbo v0, "onCreateOptionsMenu"

    const-string/jumbo v3, "Phone fragment"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const v0, 0x7f100008

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 615
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getNewPackagesCount()I

    move-result v3

    .line 617
    const v0, 0x7f07043d

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->i:Lcom/actionbarsherlock/view/MenuItem;

    .line 618
    iget-object v4, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->i:Lcom/actionbarsherlock/view/MenuItem;

    if-lez v3, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v4, v0}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 620
    const v0, 0x7f070457

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->h:Lcom/actionbarsherlock/view/MenuItem;

    .line 625
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->h:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    const v4, 0x7f070129

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->h:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    const v4, 0x7f07012b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->j:Landroid/widget/ImageView;

    .line 629
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->j:Landroid/widget/ImageView;

    if-lez v3, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 630
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 618
    goto :goto_1

    :cond_3
    move v1, v2

    .line 629
    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    const v0, 0x7f030023

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 222
    invoke-direct {p0, v0, p3}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 223
    return-object v0
.end method

.method public varargs onDataChange(Lcom/viber/voip/messages/orm/service/EntityService;I[Lcom/viber/voip/messages/orm/entity/Entity;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/messages/orm/service/EntityService",
            "<*>;I[",
            "Lcom/viber/voip/messages/orm/entity/Entity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 788
    instance-of v0, p1, Lcom/viber/voip/calls/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->e:Lcom/viber/voip/ui/s;

    invoke-virtual {v0}, Lcom/viber/voip/ui/s;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->e:Lcom/viber/voip/ui/s;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/ui/s;->a(ZLjava/lang/String;)V

    .line 791
    :cond_0
    invoke-direct {p0, p1}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Lcom/viber/voip/messages/orm/service/EntityService;)V

    .line 792
    return-void
.end method

.method public onDataReady(Lcom/viber/voip/messages/orm/service/EntityService;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/messages/orm/service/EntityService",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 780
    instance-of v0, p1, Lcom/viber/voip/calls/a/a;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->e:Lcom/viber/voip/ui/s;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/ui/s;->a(ZLjava/lang/String;)V

    .line 783
    :cond_0
    invoke-direct {p0, p1}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Lcom/viber/voip/messages/orm/service/EntityService;)V

    .line 784
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 544
    invoke-super {p0}, Lcom/viber/voip/ui/h;->onDestroy()V

    .line 545
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/viber/voip/calls/ui/PhoneFragment;->a:Lcom/viber/voip/calls/a/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/calls/a/e;->getServiceWrapper(I)Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->destroy()V

    .line 546
    :cond_0
    sget-object v0, Lcom/viber/voip/calls/ui/PhoneFragment;->b:Lcom/viber/voip/contacts/e/k;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/viber/voip/calls/ui/PhoneFragment;->b:Lcom/viber/voip/contacts/e/k;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/e/k;->getServiceWrapper(I)Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->destroy()V

    .line 547
    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 1153
    invoke-super {p0}, Lcom/viber/voip/ui/h;->onDetach()V

    .line 1154
    sget-object v0, Lcom/viber/voip/calls/ui/PhoneFragment;->R:Lcom/viber/voip/calls/ui/j;

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->S:Lcom/viber/voip/calls/ui/j;

    .line 1155
    return-void
.end method

.method public onFragmentVisibilityChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1164
    invoke-super {p0, p1}, Lcom/viber/voip/ui/h;->onFragmentVisibilityChanged(Z)V

    .line 1165
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1176
    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    .line 1169
    if-nez p1, :cond_0

    if-nez v0, :cond_0

    .line 1170
    invoke-direct {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->q()V

    .line 1172
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhoneTypeField;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 551
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/ui/s;

    .line 552
    if-nez v0, :cond_1

    move v0, v1

    .line 560
    :cond_0
    :goto_0
    return v0

    .line 553
    :cond_1
    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/s;->a()Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 554
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    invoke-virtual {v2}, Lcom/viber/voip/calls/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 556
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->N:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/s;->a()Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    move-result-object v0

    invoke-virtual {v1, p3, v0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->b(ILcom/viber/voip/calls/entities/AggregatedCallEntity;)Z

    move-result v0

    .line 557
    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 717
    invoke-virtual {p0, p3}, Lcom/viber/voip/calls/ui/PhoneFragment;->d(I)V

    .line 718
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 719
    if-nez v0, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->N:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    invoke-virtual {v1}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c()Z

    move-result v1

    if-nez v1, :cond_6

    .line 722
    const/4 v1, 0x0

    .line 724
    instance-of v2, v0, Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    if-eqz v2, :cond_5

    move-object v10, v0

    .line 725
    check-cast v10, Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    .line 726
    invoke-interface {v10}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->c()Lcom/viber/voip/contacts/b/b;

    move-result-object v9

    .line 727
    if-eqz v9, :cond_4

    .line 728
    invoke-interface {v9}, Lcom/viber/voip/contacts/b/b;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v6

    .line 729
    invoke-interface {v9}, Lcom/viber/voip/contacts/b/b;->getId()J

    move-result-wide v0

    invoke-interface {v9}, Lcom/viber/voip/contacts/b/b;->c()J

    move-result-wide v2

    invoke-interface {v9}, Lcom/viber/voip/contacts/b/b;->g()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->g()Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_2

    invoke-interface {v6}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-interface {v9}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9}, Lcom/viber/voip/contacts/b/b;->b()Landroid/net/Uri;

    move-result-object v8

    invoke-interface {v10}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->k()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v9}, Lcom/viber/voip/contacts/b/b;->e()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    :goto_2
    invoke-interface {v10}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->d()Ljava/util/Collection;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Lcom/viber/voip/calls/entities/CallEntity;

    invoke-interface {v10, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/viber/voip/calls/entities/CallEntity;

    invoke-static/range {v0 .. v10}, Lcom/viber/voip/util/gn;->a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z[Lcom/viber/voip/calls/entities/CallEntity;)Landroid/content/Intent;

    move-result-object v0

    .line 742
    :goto_3
    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->S:Lcom/viber/voip/calls/ui/j;

    invoke-interface {v1, v0}, Lcom/viber/voip/calls/ui/j;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 729
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 733
    :cond_4
    invoke-interface {v10}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->k()Z

    move-result v2

    invoke-interface {v10}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->d()Ljava/util/Collection;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/viber/voip/calls/entities/CallEntity;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/calls/entities/CallEntity;

    invoke-static {v1, v2, v0}, Lcom/viber/voip/util/gn;->a(Ljava/lang/String;Z[Lcom/viber/voip/calls/entities/CallEntity;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_3

    .line 736
    :cond_5
    instance-of v2, v0, Lcom/viber/voip/contacts/b/b;

    if-eqz v2, :cond_8

    move-object v6, v0

    .line 737
    check-cast v6, Lcom/viber/voip/contacts/b/b;

    .line 738
    invoke-interface {v6}, Lcom/viber/voip/contacts/b/b;->getId()J

    move-result-wide v0

    invoke-interface {v6}, Lcom/viber/voip/contacts/b/b;->c()J

    move-result-wide v2

    invoke-interface {v6}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6}, Lcom/viber/voip/contacts/b/b;->g()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6}, Lcom/viber/voip/contacts/b/b;->b()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    sget-object v8, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    invoke-virtual {v8}, Lcom/viber/voip/a/l;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/viber/voip/util/gn;->a(JJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_3

    .line 744
    :cond_6
    instance-of v1, v0, Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    if-eqz v1, :cond_7

    .line 745
    check-cast v0, Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    .line 746
    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->N:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    invoke-virtual {v1, p3, v0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a(ILcom/viber/voip/calls/entities/AggregatedCallEntity;)Z

    goto/16 :goto_0

    .line 747
    :cond_7
    instance-of v0, v0, Lcom/viber/voip/contacts/b/b;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->N:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a(ILcom/viber/voip/calls/entities/AggregatedCallEntity;)Z

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_3
.end method

.method public onNewStickerPackageCountChanged(I)V
    .locals 4
    .parameter

    .prologue
    const v1, 0x7f0202fb

    const v2, 0x7f0202fa

    .line 636
    iget-object v3, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->i:Lcom/actionbarsherlock/view/MenuItem;

    if-lez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 638
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->j:Landroid/widget/ImageView;

    if-lez p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 641
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 636
    goto :goto_0

    :cond_2
    move v1, v2

    .line 639
    goto :goto_1
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 645
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 651
    invoke-super {p0, p1}, Lcom/viber/voip/ui/h;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 647
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.YOU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->startActivity(Landroid/content/Intent;)V

    .line 648
    const/4 v0, 0x1

    goto :goto_0

    .line 645
    nop

    :pswitch_data_0
    .packed-switch 0x7f07043d
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 519
    const-string/jumbo v0, "onPause"

    invoke-direct {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->d(Ljava/lang/String;)V

    .line 520
    invoke-super {p0}, Lcom/viber/voip/ui/h;->onPause()V

    .line 521
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->P:Lcom/viber/voip/util/b/w;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/w;->a(Z)V

    .line 522
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->removeInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 523
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->H:Lcom/viber/voip/sound/ISoundService;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->H:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->stopDTMFTone()V

    .line 526
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 589
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 590
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->h:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->i:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 592
    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/viber/voip/util/gl;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 593
    :goto_1
    iget-object v4, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->h:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v4, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 594
    iget-object v4, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->i:Lcom/actionbarsherlock/view/MenuItem;

    if-nez v0, :cond_3

    :goto_2
    invoke-interface {v4, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 596
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 592
    goto :goto_1

    :cond_3
    move v1, v2

    .line 594
    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 490
    invoke-super {p0}, Lcom/viber/voip/ui/h;->onResume()V

    .line 491
    const-string/jumbo v2, "onResume"

    invoke-direct {p0, v2}, Lcom/viber/voip/calls/ui/PhoneFragment;->d(Ljava/lang/String;)V

    .line 492
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 493
    iget-object v2, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v2}, Lcom/viber/voip/widget/PhoneTypeField;->c()V

    .line 497
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResume Intent data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/viber/voip/calls/ui/PhoneFragment;->d(Ljava/lang/String;)V

    .line 499
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 500
    iget-object v3, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/viber/voip/widget/PhoneTypeField;->setPhoneFieldText(Ljava/lang/String;)V

    .line 505
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->m()V

    .line 508
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "dtmf_tone"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->I:Z

    .line 509
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->x()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->J:Z

    .line 511
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhoneTypeField;->b()V

    .line 513
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->c:Lcom/viber/voip/calls/ui/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->c:Lcom/viber/voip/calls/ui/p;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/p;->notifyDataSetChanged()V

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->d:Lcom/viber/voip/calls/ui/u;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->d:Lcom/viber/voip/calls/ui/u;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/u;->notifyDataSetChanged()V

    .line 515
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 508
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 986
    invoke-super {p0, p1}, Lcom/viber/voip/ui/h;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 987
    const-string/jumbo v0, "edit_text"

    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v1}, Lcom/viber/voip/widget/PhoneTypeField;->getPhoneTypeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->N:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    if-eqz v0, :cond_0

    .line 989
    const-string/jumbo v0, "mode_manager"

    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->N:Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;

    invoke-virtual {v1}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a()Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 991
    :cond_0
    const-string/jumbo v1, "show_keyboard"

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 992
    const-string/jumbo v0, "number"

    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->m:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v1}, Lcom/viber/voip/widget/PhoneTypeField;->getPhoneTypeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    return-void

    .line 991
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 657
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 662
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->P:Lcom/viber/voip/util/b/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/w;->a(Z)V

    .line 668
    :goto_0
    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->P:Lcom/viber/voip/util/b/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/w;->a(Z)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 530
    invoke-super {p0}, Lcom/viber/voip/ui/h;->onStart()V

    .line 531
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/viber/voip/calls/ui/PhoneFragment;->a:Lcom/viber/voip/calls/a/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/calls/a/e;->getServiceWrapper(I)Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->start(Lcom/viber/voip/messages/orm/service/ServiceCallback;)V

    .line 532
    :cond_0
    sget-object v0, Lcom/viber/voip/calls/ui/PhoneFragment;->b:Lcom/viber/voip/contacts/e/k;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/viber/voip/calls/ui/PhoneFragment;->b:Lcom/viber/voip/contacts/e/k;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/e/k;->getServiceWrapper(I)Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->start(Lcom/viber/voip/messages/orm/service/ServiceCallback;)V

    .line 533
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 537
    invoke-super {p0}, Lcom/viber/voip/ui/h;->onStop()V

    .line 538
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragment;->f:Lcom/viber/voip/calls/a/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/viber/voip/calls/ui/PhoneFragment;->a:Lcom/viber/voip/calls/a/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/calls/a/e;->getServiceWrapper(I)Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->stop(Lcom/viber/voip/messages/orm/service/ServiceCallback;)V

    .line 539
    :cond_0
    sget-object v0, Lcom/viber/voip/calls/ui/PhoneFragment;->b:Lcom/viber/voip/contacts/e/k;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/viber/voip/calls/ui/PhoneFragment;->b:Lcom/viber/voip/contacts/e/k;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/e/k;->getServiceWrapper(I)Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/orm/service/uiwrapper/ServiceWrapper$InternalWrapper;->stop(Lcom/viber/voip/messages/orm/service/ServiceCallback;)V

    .line 540
    :cond_1
    return-void
.end method

.method public onTabReselected()V
    .locals 0

    .prologue
    .line 1266
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragment;->y()V

    .line 1267
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 840
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->f(I)Z

    .line 841
    const/4 v0, 0x0

    return v0
.end method
