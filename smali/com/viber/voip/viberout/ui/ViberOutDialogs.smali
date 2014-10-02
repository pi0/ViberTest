.class public Lcom/viber/voip/viberout/ui/ViberOutDialogs;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static c:Z

.field private static d:Z


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 940
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 941
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 942
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 943
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 944
    new-instance v1, Lcom/viber/voip/viberout/ui/ak;

    invoke-direct {v1, p2}, Lcom/viber/voip/viberout/ui/ak;-><init>(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 950
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 951
    return-object v0
.end method

.method private a(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 936
    const v0, 0x7f0c0457

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 932
    invoke-static {p0, p1, p2}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->j()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/viber/voip/viberout/ui/ax;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 131
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 132
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 134
    const-string/jumbo v0, "METHOD"

    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ax;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    return-object v1
.end method

.method private a(IILandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 955
    invoke-static {p0, p1, p2, p3}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnCancelListener;)V

    .line 956
    return-void
.end method

.method private a(IILcom/viber/voip/viberout/ui/aw;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1003
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(IILcom/viber/voip/viberout/ui/aw;Ljava/lang/String;)V

    .line 1004
    return-void
.end method

.method private a(IILcom/viber/voip/viberout/ui/aw;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1007
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1008
    if-eqz p1, :cond_0

    .line 1009
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1011
    :cond_0
    if-eqz p2, :cond_1

    .line 1012
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1014
    :cond_1
    invoke-direct {p0, v0, p3, p4}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Landroid/app/AlertDialog$Builder;Lcom/viber/voip/viberout/ui/aw;Ljava/lang/String;)V

    .line 1015
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1016
    invoke-static {p3}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->c(Lcom/viber/voip/viberout/ui/aw;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1017
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1018
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/viber/voip/billing/ae;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-static {p0, p1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Landroid/content/Context;Lcom/viber/voip/billing/ae;)V

    .line 128
    return-void
.end method

.method private a(Landroid/app/AlertDialog$Builder;Lcom/viber/voip/viberout/ui/aw;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1022
    const v0, 0x104000a

    new-instance v1, Lcom/viber/voip/viberout/ui/am;

    invoke-direct {v1, p0, p3, p2}, Lcom/viber/voip/viberout/ui/am;-><init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Ljava/lang/String;Lcom/viber/voip/viberout/ui/aw;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1036
    return-void
.end method

.method public static a(Landroid/content/Context;IILandroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 964
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 965
    if-eqz p1, :cond_0

    .line 966
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 968
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 969
    const v1, 0x104000a

    new-instance v2, Lcom/viber/voip/viberout/ui/al;

    invoke-direct {v2, p3}, Lcom/viber/voip/viberout/ui/al;-><init>(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 978
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 979
    if-eqz p3, :cond_1

    .line 980
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 982
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 983
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/viber/voip/billing/ae;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 736
    const-string/jumbo v0, "tel"

    invoke-virtual {p1}, Lcom/viber/voip/billing/ae;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 737
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 738
    const-string/jumbo v0, "viber_out"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 739
    invoke-static {p0, v1}, Lcom/viber/service/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 740
    return-void
.end method

.method private static a(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 138
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 139
    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method public static a(Lcom/viber/voip/billing/ae;)V
    .locals 3
    .parameter

    .prologue
    .line 84
    sget-object v0, Lcom/viber/voip/viberout/ui/ax;->a:Lcom/viber/voip/viberout/ui/ax;

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/ax;)Landroid/content/Intent;

    move-result-object v0

    .line 85
    const-string/jumbo v1, "NUMBER"

    invoke-virtual {p0}, Lcom/viber/voip/billing/ae;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Landroid/content/Intent;)V

    .line 87
    return-void
.end method

.method public static a(Lcom/viber/voip/billing/ae;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 103
    sget-object v0, Lcom/viber/voip/viberout/ui/ax;->d:Lcom/viber/voip/viberout/ui/ax;

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/ax;)Landroid/content/Intent;

    move-result-object v0

    .line 104
    const-string/jumbo v1, "NUMBER"

    invoke-virtual {p0}, Lcom/viber/voip/billing/ae;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string/jumbo v1, "IS_VIBER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Landroid/content/Intent;)V

    .line 107
    return-void
.end method

.method private a(Lcom/viber/voip/billing/r;)V
    .locals 2
    .parameter

    .prologue
    .line 303
    sget-object v0, Lcom/viber/voip/viberout/ui/ar;->b:[I

    invoke-virtual {p1}, Lcom/viber/voip/billing/r;->b()Lcom/viber/voip/billing/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/billing/s;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 308
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->k()Lcom/viber/voip/viberout/ui/aw;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->b(Lcom/viber/voip/viberout/ui/aw;)V

    .line 310
    :goto_0
    return-void

    .line 305
    :pswitch_0
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->k()Lcom/viber/voip/viberout/ui/aw;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/aw;)V

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;IILandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(IILandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Lcom/viber/voip/billing/ae;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->g(Lcom/viber/voip/billing/ae;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Lcom/viber/voip/billing/ae;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->b(Lcom/viber/voip/billing/ae;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Lcom/viber/voip/billing/r;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/billing/r;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Lcom/viber/voip/viberout/ui/ay;[Lcom/viber/voip/billing/q;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/ay;[Lcom/viber/voip/billing/q;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/billing/ae;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/billing/ae;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;[Lcom/viber/voip/billing/q;Lcom/viber/voip/billing/ae;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a([Lcom/viber/voip/billing/q;Lcom/viber/voip/billing/ae;)V

    return-void
.end method

.method private a(Lcom/viber/voip/viberout/ui/aw;)V
    .locals 2
    .parameter

    .prologue
    .line 994
    const v0, 0x7f0c03a2

    const v1, 0x7f0c038e

    invoke-direct {p0, v0, v1, p1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(IILcom/viber/voip/viberout/ui/aw;)V

    .line 995
    return-void
.end method

.method private a(Lcom/viber/voip/viberout/ui/ay;Lcom/viber/voip/billing/q;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 774
    invoke-virtual {p2}, Lcom/viber/voip/billing/q;->a()Ljava/lang/String;

    move-result-object v3

    .line 775
    new-instance v0, Lcom/viber/voip/viberout/ui/ae;

    move-object v1, p0

    move-object v2, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/viberout/ui/ae;-><init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/billing/q;Ljava/lang/String;)V

    invoke-virtual {p1, v3, v0}, Lcom/viber/voip/viberout/ui/ay;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/view/View;

    .line 853
    return-void
.end method

.method private a(Lcom/viber/voip/viberout/ui/ay;[Lcom/viber/voip/billing/q;ZLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 761
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->e()Ljava/lang/String;

    move-result-object v1

    .line 762
    if-eqz p2, :cond_2

    .line 763
    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 764
    if-eqz p3, :cond_0

    aget-object v2, p2, v0

    invoke-virtual {v2}, Lcom/viber/voip/billing/q;->f()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 765
    :cond_0
    aget-object v2, p2, v0

    invoke-direct {p0, p1, v2, v1, p4}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/ay;Lcom/viber/voip/billing/q;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 769
    :cond_2
    const-string/jumbo v0, "addCreditProductButtons: no products"

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->b(Ljava/lang/String;)V

    .line 771
    :cond_3
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-static {p0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/billing/ae;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 675
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 676
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 677
    new-instance v1, Lcom/viber/voip/viberout/ui/ac;

    invoke-direct {v1, p0, v3, p3}, Lcom/viber/voip/viberout/ui/ac;-><init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Landroid/app/AlertDialog;Lcom/viber/voip/billing/ae;)V

    .line 695
    const v0, 0x7f07023c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 696
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    const v4, 0x7f0c02b6

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 699
    const v0, 0x7f07023d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 700
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    const v1, 0x7f0c02ae

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 703
    const v0, 0x7f07023e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 704
    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 706
    if-eqz p1, :cond_0

    .line 707
    invoke-virtual {v3, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 712
    :goto_0
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 713
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->j()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 715
    const v0, 0x7f070122

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 716
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 719
    return-void

    .line 709
    :cond_0
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1084
    return-void
.end method

.method public static a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 61
    sput-boolean p0, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->c:Z

    .line 62
    return-void
.end method

.method private a([Lcom/viber/voip/billing/q;Lcom/viber/voip/billing/ae;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 458
    new-instance v0, Lcom/viber/voip/viberout/ui/ay;

    invoke-direct {v0, p0}, Lcom/viber/voip/viberout/ui/ay;-><init>(Landroid/content/Context;)V

    .line 460
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "600"

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 462
    const v1, 0x7f0c0574

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/ui/ay;->a(I)V

    .line 463
    const v1, 0x7f0c0575

    invoke-virtual {p0, v1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/ui/ay;->a(Ljava/lang/String;)V

    .line 465
    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "600"

    invoke-direct {p0, v0, p1, v4, v1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/ay;[Lcom/viber/voip/billing/q;ZLjava/lang/String;)V

    .line 467
    const v1, 0x7f0c0577

    new-instance v2, Lcom/viber/voip/viberout/ui/p;

    invoke-direct {v2, p0, p2}, Lcom/viber/voip/viberout/ui/p;-><init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Lcom/viber/voip/billing/ae;)V

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/viberout/ui/ay;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/view/View;

    .line 479
    const v1, 0x7f0c0578

    new-instance v2, Lcom/viber/voip/viberout/ui/q;

    invoke-direct {v2, p0}, Lcom/viber/voip/viberout/ui/q;-><init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;)V

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/viberout/ui/ay;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/view/View;

    .line 489
    invoke-virtual {v0, v4}, Lcom/viber/voip/viberout/ui/ay;->a(Z)V

    .line 490
    new-instance v1, Lcom/viber/voip/viberout/ui/r;

    invoke-direct {v1, p0}, Lcom/viber/voip/viberout/ui/r;-><init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/ui/ay;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 497
    invoke-virtual {v0}, Lcom/viber/voip/viberout/ui/ay;->a()V

    .line 498
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->d:Z

    return v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/viber/voip/viberout/ui/ax;->c:Lcom/viber/voip/viberout/ui/ax;

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/ax;)Landroid/content/Intent;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Landroid/content/Intent;)V

    .line 100
    return-void
.end method

.method public static b(Lcom/viber/voip/billing/ae;)V
    .locals 3
    .parameter

    .prologue
    .line 91
    sget-object v0, Lcom/viber/voip/viberout/ui/ax;->b:Lcom/viber/voip/viberout/ui/ax;

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/ax;)Landroid/content/Intent;

    move-result-object v0

    .line 92
    const-string/jumbo v1, "NUMBER"

    invoke-virtual {p0}, Lcom/viber/voip/billing/ae;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Landroid/content/Intent;)V

    .line 94
    return-void
.end method

.method private b(Lcom/viber/voip/billing/ae;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 662
    new-instance v0, Lcom/viber/voip/viberout/ui/ab;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/viberout/ui/ab;-><init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Lcom/viber/voip/billing/ae;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/viber/voip/billing/ae;->a(Lcom/viber/voip/billing/ag;)V

    .line 672
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Lcom/viber/voip/billing/ae;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->f(Lcom/viber/voip/billing/ae;)V

    return-void
.end method

.method private b(Lcom/viber/voip/viberout/ui/aw;)V
    .locals 3
    .parameter

    .prologue
    .line 998
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "204"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 999
    const v0, 0x7f0c0557

    const v1, 0x7f0c0558

    invoke-direct {p0, v0, v1, p1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(IILcom/viber/voip/viberout/ui/aw;)V

    .line 1000
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1081
    return-void
.end method

.method public static b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLastCallInitiatedFromDialpad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->b(Ljava/lang/String;)V

    .line 66
    sput-boolean p0, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->d:Z

    .line 67
    return-void
.end method

.method private static c(Lcom/viber/voip/viberout/ui/aw;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1
    .parameter

    .prologue
    .line 1040
    if-eqz p0, :cond_0

    .line 1041
    new-instance v0, Lcom/viber/voip/viberout/ui/an;

    invoke-direct {v0, p0}, Lcom/viber/voip/viberout/ui/an;-><init>(Lcom/viber/voip/viberout/ui/aw;)V

    .line 1048
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/viber/voip/viberout/ui/ax;->e:Lcom/viber/voip/viberout/ui/ax;

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/ax;)Landroid/content/Intent;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method private d(Lcom/viber/voip/billing/ae;)V
    .locals 4
    .parameter

    .prologue
    .line 213
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/ProgressDialog;

    .line 215
    invoke-static {}, Lcom/viber/voip/billing/a;->a()Lcom/viber/voip/billing/a;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/viberout/ui/o;

    invoke-direct {v2, p0, v0, p1}, Lcom/viber/voip/viberout/ui/o;-><init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;[Landroid/app/ProgressDialog;Lcom/viber/voip/billing/ae;)V

    invoke-virtual {v1, v2}, Lcom/viber/voip/billing/a;->a(Lcom/viber/voip/billing/v;)V

    .line 228
    const/4 v1, 0x0

    const v2, 0x7f0c0562

    invoke-virtual {p0, v2}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/viberout/ui/ad;

    invoke-direct {v3, p0, v0}, Lcom/viber/voip/viberout/ui/ad;-><init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;[Landroid/app/ProgressDialog;)V

    invoke-static {p0, v2, v3}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v2

    aput-object v2, v0, v1

    .line 235
    return-void
.end method

.method private e(Lcom/viber/voip/billing/ae;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->d(Lcom/viber/voip/billing/ae;)V

    .line 316
    return-void
.end method

.method private f(Lcom/viber/voip/billing/ae;)V
    .locals 0
    .parameter

    .prologue
    .line 732
    invoke-static {p0, p1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Landroid/content/Context;Lcom/viber/voip/billing/ae;)V

    .line 733
    return-void
.end method

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->c:Z

    return v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 722
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 723
    const v1, 0x104000a

    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->l()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 724
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->j()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 725
    const v1, 0x7f0c039e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 726
    const v1, 0x7f0c039d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 727
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 728
    return-void
.end method

.method private g(Lcom/viber/voip/billing/ae;)V
    .locals 3
    .parameter

    .prologue
    .line 743
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/registration/HardwareParameters;->isGsmSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    new-instance v0, Lcom/viber/voip/a/k;

    invoke-direct {v0}, Lcom/viber/voip/a/k;-><init>()V

    .line 745
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/a/k;->c()Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 747
    const-string/jumbo v0, "tel"

    invoke-virtual {p1}, Lcom/viber/voip/billing/ae;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 748
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 749
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 750
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 754
    :goto_0
    return-void

    .line 752
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->g()V

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 986
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->k()Lcom/viber/voip/viberout/ui/aw;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/aw;)V

    .line 987
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 990
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->k()Lcom/viber/voip/viberout/ui/aw;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->b(Lcom/viber/voip/viberout/ui/aw;)V

    .line 991
    return-void
.end method

.method private j()Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    .prologue
    .line 1053
    new-instance v0, Lcom/viber/voip/viberout/ui/ao;

    invoke-direct {v0, p0}, Lcom/viber/voip/viberout/ui/ao;-><init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;)V

    return-object v0
.end method

.method private k()Lcom/viber/voip/viberout/ui/aw;
    .locals 1

    .prologue
    .line 1062
    new-instance v0, Lcom/viber/voip/viberout/ui/ap;

    invoke-direct {v0, p0}, Lcom/viber/voip/viberout/ui/ap;-><init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;)V

    return-object v0
.end method

.method private l()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 1071
    new-instance v0, Lcom/viber/voip/viberout/ui/aq;

    invoke-direct {v0, p0}, Lcom/viber/voip/viberout/ui/aq;-><init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/ae;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 533
    new-instance v0, Lcom/viber/voip/viberout/ui/u;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/viberout/ui/u;-><init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Lcom/viber/voip/billing/ae;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/viber/voip/billing/ae;->a(Lcom/viber/voip/billing/ag;)V

    .line 597
    return-void
.end method

.method public b(Lcom/viber/voip/billing/ae;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 502
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/ProgressDialog;

    .line 503
    const/4 v1, 0x0

    new-instance v2, Lcom/viber/voip/viberout/ui/s;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/viberout/ui/s;-><init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;[Landroid/app/ProgressDialog;)V

    invoke-direct {p0, v2}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v2

    aput-object v2, v0, v1

    .line 510
    invoke-static {}, Lcom/viber/voip/billing/a;->a()Lcom/viber/voip/billing/a;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/viberout/ui/t;

    invoke-direct {v2, p0, v0, p2}, Lcom/viber/voip/viberout/ui/t;-><init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;[Landroid/app/ProgressDialog;Z)V

    invoke-virtual {v1, p1, v2}, Lcom/viber/voip/billing/a;->a(Lcom/viber/voip/billing/ae;Lcom/viber/voip/billing/ai;)V

    .line 529
    return-void
.end method

.method public c(Lcom/viber/voip/billing/ae;)V
    .locals 5
    .parameter

    .prologue
    .line 601
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "DIALOG_GSM_CALL_TO_NON_VIBER_NEVER_SHOW"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 603
    if-nez v0, :cond_0

    .line 604
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 605
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 606
    new-instance v0, Lcom/viber/voip/viberout/ui/z;

    invoke-direct {v0, p0}, Lcom/viber/voip/viberout/ui/z;-><init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 613
    new-instance v3, Lcom/viber/voip/viberout/ui/aa;

    invoke-direct {v3, p0, v2, p1}, Lcom/viber/voip/viberout/ui/aa;-><init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Landroid/app/AlertDialog;Lcom/viber/voip/billing/ae;)V

    .line 638
    const v0, 0x7f07023c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 639
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    const v4, 0x7f0c02b6

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 642
    const v0, 0x7f07023d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 643
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    const v4, 0x7f0c02ae

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 646
    const v0, 0x7f07023e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 647
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    const v3, 0x7f0c0379

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 650
    const v0, 0x7f070122

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 651
    const v1, 0x7f0c0380

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 653
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 654
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 659
    :goto_0
    return-void

    .line 656
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->finish()V

    .line 657
    invoke-direct {p0, p1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->g(Lcom/viber/voip/billing/ae;)V

    goto :goto_0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 250
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/ProgressDialog;

    .line 251
    invoke-static {}, Lcom/viber/voip/billing/a;->a()Lcom/viber/voip/billing/a;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/viberout/ui/as;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/viberout/ui/as;-><init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;[Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2}, Lcom/viber/voip/billing/a;->a(Lcom/viber/voip/billing/v;)V

    .line 293
    const/4 v1, 0x0

    const v2, 0x7f0c0562

    invoke-virtual {p0, v2}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/viberout/ui/av;

    invoke-direct {v3, p0, v0}, Lcom/viber/voip/viberout/ui/av;-><init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;[Landroid/app/ProgressDialog;)V

    invoke-direct {p0, v2, v3}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v2

    aput-object v2, v0, v1

    .line 300
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 241
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "tracing finish() call"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    const-string/jumbo v1, "finish() called"

    invoke-static {v1, v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->finish()V

    .line 246
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 197
    const-string/jumbo v0, "onBackPressed()"

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->b(Ljava/lang/String;)V

    .line 198
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onBackPressed()V

    .line 199
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 208
    const-string/jumbo v0, "onConfigurationChanged"

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->b(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/viber/voip/viberout/ui/ax;->values()[Lcom/viber/voip/viberout/ui/ax;

    move-result-object v1

    const-string/jumbo v2, "METHOD"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    aget-object v1, v1, v2

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate, method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->b(Ljava/lang/String;)V

    .line 149
    sget-object v2, Lcom/viber/voip/viberout/ui/ar;->a:[I

    invoke-virtual {v1}, Lcom/viber/voip/viberout/ui/ax;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 186
    :goto_0
    return-void

    .line 152
    :pswitch_0
    new-instance v1, Lcom/viber/voip/billing/ae;

    const-string/jumbo v2, "NUMBER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/viber/voip/billing/ae;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-direct {p0, v1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->d(Lcom/viber/voip/billing/ae;)V

    goto :goto_0

    .line 158
    :pswitch_1
    new-instance v1, Lcom/viber/voip/billing/ae;

    const-string/jumbo v2, "NUMBER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/viber/voip/billing/ae;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, v1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->e(Lcom/viber/voip/billing/ae;)V

    goto :goto_0

    .line 164
    :pswitch_2
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->e()V

    goto :goto_0

    .line 169
    :pswitch_3
    new-instance v1, Lcom/viber/voip/billing/ae;

    const-string/jumbo v2, "NUMBER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/viber/voip/billing/ae;-><init>(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v2, "IS_VIBER"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 171
    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->b(Lcom/viber/voip/billing/ae;Z)V

    goto :goto_0

    .line 176
    :pswitch_4
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->h()V

    goto :goto_0

    .line 181
    :pswitch_5
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->i()V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 190
    const-string/jumbo v0, "onDestroy()"

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->b(Ljava/lang/String;)V

    .line 191
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onDestroy()V

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->b:Z

    .line 193
    return-void
.end method
