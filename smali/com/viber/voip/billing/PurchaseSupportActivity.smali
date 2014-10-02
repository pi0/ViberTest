.class public Lcom/viber/voip/billing/PurchaseSupportActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"


# static fields
.field private static c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 400
    const-string/jumbo v0, ""

    sput-object v0, Lcom/viber/voip/billing/PurchaseSupportActivity;->c:Ljava/lang/String;

    .line 437
    const-class v0, Lcom/viber/voip/billing/PurchaseSupportActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/billing/PurchaseSupportActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    .line 166
    new-instance v0, Lcom/viber/voip/billing/cx;

    invoke-direct {v0, p0}, Lcom/viber/voip/billing/cx;-><init>(Lcom/viber/voip/billing/PurchaseSupportActivity;)V

    iput-object v0, p0, Lcom/viber/voip/billing/PurchaseSupportActivity;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/billing/PurchaseSupportActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/viber/voip/billing/PurchaseSupportActivity;->a:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private a(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 371
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 372
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 373
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 374
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 375
    new-instance v1, Lcom/viber/voip/billing/di;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/billing/di;-><init>(Lcom/viber/voip/billing/PurchaseSupportActivity;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 381
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 382
    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/billing/dm;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-static {p0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->b(Lcom/viber/voip/billing/dm;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/viber/voip/billing/dl;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/viber/voip/billing/dl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/viber/voip/billing/dl;-><init>(Lcom/viber/voip/billing/cx;)V

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    .line 402
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 404
    const-string/jumbo v1, "Enter phone number"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 405
    const-string/jumbo v1, "Enter the phone number to which the dialog 602 (payment succeeded) should refer"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 408
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 409
    sget-object v2, Lcom/viber/voip/billing/PurchaseSupportActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 410
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 412
    const v2, 0x104000a

    new-instance v3, Lcom/viber/voip/billing/dj;

    invoke-direct {v3, v1}, Lcom/viber/voip/billing/dj;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 419
    const/high16 v1, 0x104

    new-instance v2, Lcom/viber/voip/billing/dk;

    invoke-direct {v2}, Lcom/viber/voip/billing/dk;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 425
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 426
    return-void
.end method

.method static synthetic a(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-static {p0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/billing/PurchaseSupportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->e()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/billing/PurchaseSupportActivity;IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/billing/PurchaseSupportActivity;Lcom/viber/voip/billing/ae;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/viber/voip/billing/PurchaseSupportActivity;->a(Lcom/viber/voip/billing/ae;)V

    return-void
.end method

.method private a(Lcom/viber/voip/billing/ae;)V
    .locals 5
    .parameter

    .prologue
    .line 362
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CALL"

    const-string/jumbo v2, "tel"

    invoke-virtual {p1}, Lcom/viber/voip/billing/ae;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 363
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 364
    const-string/jumbo v1, "viber_out"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 365
    invoke-static {p0, v0}, Lcom/viber/service/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 367
    invoke-virtual {p0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->finish()V

    .line 368
    return-void
.end method

.method public static a(Lcom/viber/voip/billing/bn;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 91
    sget-object v0, Lcom/viber/voip/billing/dm;->a:Lcom/viber/voip/billing/dm;

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->b(Lcom/viber/voip/billing/dm;)Landroid/content/Intent;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/viber/voip/billing/dn;->d:Lcom/viber/voip/billing/dn;

    invoke-virtual {v1}, Lcom/viber/voip/billing/dn;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/billing/bn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    sget-object v1, Lcom/viber/voip/billing/dn;->e:Lcom/viber/voip/billing/dn;

    invoke-virtual {v1}, Lcom/viber/voip/billing/dn;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->b(Landroid/content/Intent;)V

    .line 95
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 103
    sget-object v0, Lcom/viber/voip/billing/dm;->c:Lcom/viber/voip/billing/dm;

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->b(Lcom/viber/voip/billing/dm;)Landroid/content/Intent;

    move-result-object v0

    .line 104
    if-eqz p0, :cond_0

    .line 105
    sget-object v1, Lcom/viber/voip/billing/dn;->a:Lcom/viber/voip/billing/dn;

    invoke-virtual {v1}, Lcom/viber/voip/billing/dn;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    :cond_0
    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->b(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/viber/voip/billing/ae;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 117
    sget-object v0, Lcom/viber/voip/billing/dm;->d:Lcom/viber/voip/billing/dm;

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->b(Lcom/viber/voip/billing/dm;)Landroid/content/Intent;

    move-result-object v0

    .line 118
    sget-object v1, Lcom/viber/voip/billing/dn;->f:Lcom/viber/voip/billing/dn;

    invoke-virtual {v1}, Lcom/viber/voip/billing/dn;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    if-eqz p1, :cond_0

    .line 120
    sget-object v1, Lcom/viber/voip/billing/dn;->g:Lcom/viber/voip/billing/dn;

    invoke-virtual {v1}, Lcom/viber/voip/billing/dn;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/voip/billing/ae;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    :cond_0
    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->b(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    if-eqz p3, :cond_0

    .line 232
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v1, p3}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 235
    :cond_0
    new-instance v0, Lcom/viber/voip/billing/cz;

    invoke-direct {v0, p0, p3}, Lcom/viber/voip/billing/cz;-><init>(Lcom/viber/voip/billing/PurchaseSupportActivity;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/content/DialogInterface;

    .line 245
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/billing/PurchaseSupportActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/billing/PurchaseSupportActivity;->a:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private static b(Lcom/viber/voip/billing/dm;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 126
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 127
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/viber/voip/billing/PurchaseSupportActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 129
    const-string/jumbo v0, "EXTRA_METHOD"

    invoke-virtual {p0}, Lcom/viber/voip/billing/dm;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    return-object v1
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 98
    const-string/jumbo v0, "invokeShowProgressDialog"

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->f(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->a(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method private static b(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method private b(Lcom/viber/voip/billing/bn;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-static {}, Lcom/viber/voip/billing/bv;->a()Lcom/viber/voip/billing/bv;

    move-result-object v1

    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->d(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v1}, Lcom/viber/voip/billing/bv;->c()Lcom/viber/voip/billing/ap;

    move-result-object v0

    const/16 v3, 0x2af8

    invoke-virtual {v1, p1}, Lcom/viber/voip/billing/bv;->b(Lcom/viber/voip/billing/bn;)Lcom/viber/voip/billing/bh;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/billing/ap;->a(Landroid/app/Activity;Lcom/viber/voip/billing/bn;ILcom/viber/voip/billing/bh;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-static {p0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->f(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/viber/voip/billing/ae;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showViberOutPaymentSuccessDialog credits:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->f(Ljava/lang/String;)V

    .line 266
    if-eqz p2, :cond_0

    .line 267
    const v0, 0x7f0c0581

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->d(Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/viber/voip/billing/a;->a()Lcom/viber/voip/billing/a;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/billing/db;

    invoke-direct {v1, p0}, Lcom/viber/voip/billing/db;-><init>(Lcom/viber/voip/billing/PurchaseSupportActivity;)V

    invoke-virtual {v0, p2, v1}, Lcom/viber/voip/billing/a;->a(Lcom/viber/voip/billing/ae;Lcom/viber/voip/billing/ai;)V

    .line 331
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->f()V

    .line 329
    invoke-direct {p0, p1}, Lcom/viber/voip/billing/PurchaseSupportActivity;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 30
    sput-object p0, Lcom/viber/voip/billing/PurchaseSupportActivity;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static c()V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 112
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "finish-purchase-support"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 114
    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 187
    invoke-static {}, Lcom/viber/voip/billing/dm;->values()[Lcom/viber/voip/billing/dm;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_METHOD"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleIntent, method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/billing/PurchaseSupportActivity;->f(Ljava/lang/String;)V

    .line 189
    sget-object v1, Lcom/viber/voip/billing/cy;->a:[I

    invoke-virtual {v0}, Lcom/viber/voip/billing/dm;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->f(Ljava/lang/String;)V

    .line 219
    invoke-direct {p0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->e()V

    .line 221
    :goto_0
    return-void

    .line 191
    :pswitch_0
    sget-object v0, Lcom/viber/voip/billing/dn;->d:Lcom/viber/voip/billing/dn;

    invoke-virtual {v0}, Lcom/viber/voip/billing/dn;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/bn;->a(Ljava/lang/String;)Lcom/viber/voip/billing/bn;

    move-result-object v0

    .line 192
    sget-object v1, Lcom/viber/voip/billing/dn;->e:Lcom/viber/voip/billing/dn;

    invoke-virtual {v1}, Lcom/viber/voip/billing/dn;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-direct {p0, v0, v1}, Lcom/viber/voip/billing/PurchaseSupportActivity;->b(Lcom/viber/voip/billing/bn;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :pswitch_1
    sget-object v0, Lcom/viber/voip/billing/dn;->a:Lcom/viber/voip/billing/dn;

    invoke-virtual {v0}, Lcom/viber/voip/billing/dn;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    sget-object v1, Lcom/viber/voip/billing/dn;->b:Lcom/viber/voip/billing/dn;

    invoke-virtual {v1}, Lcom/viber/voip/billing/dn;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    sget-object v2, Lcom/viber/voip/billing/dn;->c:Lcom/viber/voip/billing/dn;

    invoke-virtual {v2}, Lcom/viber/voip/billing/dn;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/billing/PurchaseSupportActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :pswitch_2
    sget-object v0, Lcom/viber/voip/billing/dn;->a:Lcom/viber/voip/billing/dn;

    invoke-virtual {v0}, Lcom/viber/voip/billing/dn;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-direct {p0, v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :pswitch_3
    sget-object v0, Lcom/viber/voip/billing/dn;->f:Lcom/viber/voip/billing/dn;

    invoke-virtual {v0}, Lcom/viber/voip/billing/dn;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    sget-object v0, Lcom/viber/voip/billing/dn;->g:Lcom/viber/voip/billing/dn;

    invoke-virtual {v0}, Lcom/viber/voip/billing/dn;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 213
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->b(Ljava/lang/String;Lcom/viber/voip/billing/ae;)V

    goto :goto_0

    .line 212
    :cond_0
    new-instance v0, Lcom/viber/voip/billing/ae;

    invoke-direct {v0, v2}, Lcom/viber/voip/billing/ae;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic c(Lcom/viber/voip/billing/PurchaseSupportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->f()V

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/viber/voip/billing/PurchaseSupportActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    const v0, 0x7f0c0562

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/billing/PurchaseSupportActivity;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/viber/voip/billing/PurchaseSupportActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 254
    :cond_1
    new-instance v0, Lcom/viber/voip/billing/da;

    invoke-direct {v0, p0}, Lcom/viber/voip/billing/da;-><init>(Lcom/viber/voip/billing/PurchaseSupportActivity;)V

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/billing/PurchaseSupportActivity;->a:Landroid/app/ProgressDialog;

    .line 262
    return-void
.end method

.method private e()V
    .locals 0

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->finish()V

    .line 389
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 334
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 335
    const v1, 0x7f0c0582

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 337
    if-eqz p1, :cond_0

    .line 338
    const v1, 0x7f0c0583

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/billing/PurchaseSupportActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 341
    :cond_0
    const v1, 0x104000a

    new-instance v2, Lcom/viber/voip/billing/dg;

    invoke-direct {v2, p0}, Lcom/viber/voip/billing/dg;-><init>(Lcom/viber/voip/billing/PurchaseSupportActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 347
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 348
    new-instance v1, Lcom/viber/voip/billing/dh;

    invoke-direct {v1, p0}, Lcom/viber/voip/billing/dh;-><init>(Lcom/viber/voip/billing/PurchaseSupportActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 354
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 356
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "604"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 359
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/viber/voip/billing/PurchaseSupportActivity;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/viber/voip/billing/PurchaseSupportActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/billing/PurchaseSupportActivity;->a:Landroid/app/ProgressDialog;

    .line 397
    :cond_0
    return-void
.end method

.method private static f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 431
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityResult("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->f(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/viber/voip/billing/bv;->a()Lcom/viber/voip/billing/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/billing/bv;->c()Lcom/viber/voip/billing/ap;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/billing/ap;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-static {p0, p1, p2, p3}, Lcom/viber/voip/billing/PurchaseSupportActivity;->a(Lcom/viber/voip/billing/PurchaseSupportActivity;IILandroid/content/Intent;)V

    .line 184
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const-string/jumbo v0, "onCreate()"

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->f(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->c(Landroid/content/Intent;)V

    .line 143
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/billing/PurchaseSupportActivity;->b:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "finish-purchase-support"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 144
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onDestroy()V

    .line 156
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/billing/PurchaseSupportActivity;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/PurchaseSupportActivity;->setIntent(Landroid/content/Intent;)V

    .line 162
    const-string/jumbo v0, "onNewIntent()"

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->f(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, p1}, Lcom/viber/voip/billing/PurchaseSupportActivity;->c(Landroid/content/Intent;)V

    .line 164
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onResume()V

    .line 149
    const-string/jumbo v0, "onResume"

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->f(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/viber/voip/billing/bv;->a()Lcom/viber/voip/billing/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/billing/bv;->c()Lcom/viber/voip/billing/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/billing/ap;->b()V

    .line 151
    return-void
.end method
