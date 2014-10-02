.class public Lcom/viber/voip/contacts/ui/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/dc;


# static fields
.field private static final d:Ljava/lang/String;

.field private static j:Z


# instance fields
.field protected a:Landroid/support/v4/app/FragmentActivity;

.field protected b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/ui/cn;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/ui/cn;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lcom/viber/voip/contacts/ui/co;

.field private g:Landroid/os/Handler;

.field private h:I

.field private i:J

.field private k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/viber/voip/contacts/ui/cb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/ui/cb;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/viber/voip/contacts/ui/co;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Lcom/viber/voip/contacts/ui/cb;->b()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/ui/cb;->e:I

    .line 75
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->g:Landroid/os/Handler;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->b:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->c:Ljava/util/Map;

    .line 518
    new-instance v0, Lcom/viber/voip/contacts/ui/ch;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/ui/ch;-><init>(Lcom/viber/voip/contacts/ui/cb;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->k:Ljava/lang/Runnable;

    .line 136
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/cb;->a:Landroid/support/v4/app/FragmentActivity;

    .line 137
    iput-object p2, p0, Lcom/viber/voip/contacts/ui/cb;->f:Lcom/viber/voip/contacts/ui/co;

    .line 139
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 140
    const-string/jumbo v1, "is_api_1to1_call"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/viber/voip/contacts/ui/cb;->j:Z

    .line 142
    invoke-static {}, Lcom/viber/voip/contacts/ui/cb;->b()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/ui/cb;->e:I

    .line 144
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/dc;)V

    .line 145
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lcom/viber/voip/contacts/ui/cb;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/cb;)J
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/viber/voip/contacts/ui/cb;->i:J

    return-wide v0
.end method

.method private static a(Landroid/content/Context;II[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 450
    array-length v0, p3

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 459
    :goto_0
    return-object v0

    .line 451
    :cond_0
    array-length v0, p3

    if-ne v0, v5, :cond_1

    new-array v0, v5, [Ljava/lang/Object;

    aget-object v2, p3, v1

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 453
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    array-length v0, p3

    add-int/lit8 v3, v0, -0x1

    move v0, v1

    .line 455
    :goto_1
    if-ge v0, v3, :cond_2

    .line 456
    aget-object v4, p3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 459
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v1, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    aget-object v1, p3, v3

    aput-object v1, v0, v5

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;ZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 361
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 362
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 363
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 364
    if-eqz p4, :cond_0

    .line 365
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 368
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 373
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 370
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 377
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 380
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 388
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 382
    :pswitch_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 385
    :pswitch_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    .line 393
    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/contacts/ui/cb;->a(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/DialogInterface$OnClickListener;)V

    .line 394
    return-void

    .line 368
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 380
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/cb;Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;ZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/viber/voip/contacts/ui/cb;->a(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;ZLandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/cb;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/cb;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/cb;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/contacts/ui/cb;->a(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/cb;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/contacts/ui/cb;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 687
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 688
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 689
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 690
    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 694
    :cond_0
    const-string/jumbo v0, "loading_dialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 695
    const v0, 0x7f0c032c

    invoke-static {v0, v2}, Lcom/viber/voip/widget/e;->a(IZ)Lcom/viber/voip/widget/e;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/viber/voip/widget/e;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 704
    :cond_1
    :goto_0
    return-void

    .line 696
    :cond_2
    const-string/jumbo v0, "add_participants_dialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 697
    const v0, 0x7f0c04c7

    invoke-static {v0, v2}, Lcom/viber/voip/widget/e;->a(IZ)Lcom/viber/voip/widget/e;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/viber/voip/widget/e;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0

    .line 701
    :cond_3
    const-string/jumbo v0, "check_number_dialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    const v0, 0x7f0c04c8

    invoke-static {v0, v2}, Lcom/viber/voip/widget/e;->a(IZ)Lcom/viber/voip/widget/e;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/viber/voip/widget/e;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;J)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 655
    const-string/jumbo v4, ""

    const/4 v5, 0x1

    const-string/jumbo v10, ""

    move-wide v2, p2

    move-wide v6, v0

    move-wide v8, v0

    invoke-static/range {v0 .. v10}, Lcom/viber/voip/messages/j;->a(JJLjava/lang/String;IJJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 656
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/viber/voip/contacts/ui/bc;

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/ui/bc;->a(Landroid/content/Intent;)V

    .line 657
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "open1to1ConversationAction number = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", name = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", photoUri = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/cb;->b(Ljava/lang/String;)V

    move-object v0, p1

    move-wide v3, v1

    move-object v5, p2

    move-object v6, p3

    .line 650
    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 651
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/viber/voip/contacts/ui/bc;

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/ui/bc;->a(Landroid/content/Intent;)V

    .line 652
    return-void
.end method

.method private a(Lcom/viber/voip/contacts/b/e;Ljava/lang/String;Z)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 221
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-static {v1, p2, p2}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v2

    .line 223
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/cb;->k()V

    .line 225
    const/4 v0, 0x0

    .line 229
    :goto_0
    return v0

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/cb;->b:Ljava/util/Map;

    new-instance v2, Lcom/viber/voip/contacts/ui/cn;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/viber/voip/contacts/ui/cn;-><init>(Lcom/viber/voip/contacts/ui/cb;Lcom/viber/voip/contacts/b/e;Lcom/viber/voip/contacts/ui/cc;)V

    invoke-virtual {v2, v0}, Lcom/viber/voip/contacts/ui/cn;->a(Z)Lcom/viber/voip/contacts/ui/cn;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/cb;->f:Lcom/viber/voip/contacts/ui/co;

    invoke-interface {v1, v0, p1, p2, p3}, Lcom/viber/voip/contacts/ui/co;->a(ZLcom/viber/voip/contacts/b/e;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/cb;Lcom/viber/voip/contacts/b/e;Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/contacts/ui/cb;->a(Lcom/viber/voip/contacts/b/e;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 152
    sget-boolean v0, Lcom/viber/voip/contacts/ui/cb;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x63

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/contacts/ui/cb;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/contacts/ui/cb;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/cb;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 660
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/contacts/ui/cb;->d:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method private b(Ljava/util/Map;Z)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 176
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 177
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 179
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 182
    iget-object v4, p0, Lcom/viber/voip/contacts/ui/cb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    new-instance v1, Lcom/viber/voip/contacts/ui/cn;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/ui/cn;-><init>(Lcom/viber/voip/contacts/ui/cb;)V

    invoke-virtual {v1, v2}, Lcom/viber/voip/contacts/ui/cn;->a(Z)Lcom/viber/voip/contacts/ui/cn;

    move-result-object v6

    if-nez p2, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v6, v1}, Lcom/viber/voip/contacts/ui/cn;->b(Z)Lcom/viber/voip/contacts/ui/cn;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/viber/voip/contacts/ui/cn;->c(Z)Lcom/viber/voip/contacts/ui/cn;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/cb;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    new-instance v4, Lcom/viber/voip/contacts/ui/cn;

    invoke-direct {v4, p0}, Lcom/viber/voip/contacts/ui/cn;-><init>(Lcom/viber/voip/contacts/ui/cb;)V

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 182
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 186
    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/contacts/ui/cb;)Lcom/viber/voip/contacts/ui/co;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->f:Lcom/viber/voip/contacts/ui/co;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 683
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/contacts/ui/cb;->a(Ljava/lang/String;I)V

    .line 684
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 707
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 708
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 709
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 710
    if-eqz v0, :cond_0

    .line 711
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 712
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 714
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Z)Ljava/util/Map;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Lcom/viber/voip/messages/controller/GroupController$GroupMember;",
            "Lcom/viber/voip/contacts/ui/cn;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 238
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 239
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    if-eqz p1, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/ui/cn;

    iget-boolean v1, v1, Lcom/viber/voip/contacts/ui/cn;->c:Z

    if-nez v1, :cond_0

    .line 241
    :cond_1
    new-instance v6, Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    invoke-direct {v6}, Lcom/viber/voip/messages/controller/GroupController$GroupMember;-><init>()V

    .line 242
    new-instance v7, Lcom/viber/jni/GroupUserInfo;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/contacts/ui/cn;

    invoke-virtual {v2}, Lcom/viber/voip/contacts/ui/cn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v1, v2, v3}, Lcom/viber/jni/GroupUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v6, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    .line 243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/ui/cn;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/cn;->a(Lcom/viber/voip/contacts/ui/cn;)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/ui/cn;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/cn;->a(Lcom/viber/voip/contacts/ui/cn;)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/e;->c()J

    move-result-wide v1

    :goto_1
    iput-wide v1, v6, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->b:J

    .line 244
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/ui/cn;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/cn;->a(Lcom/viber/voip/contacts/ui/cn;)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/ui/cn;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/cn;->a(Lcom/viber/voip/contacts/ui/cn;)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/e;->b()Landroid/net/Uri;

    move-result-object v1

    :goto_2
    iput-object v1, v6, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->c:Landroid/net/Uri;

    .line 246
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 243
    :cond_2
    const-wide/16 v1, -0x1

    goto :goto_1

    :cond_3
    move-object v1, v3

    .line 244
    goto :goto_2

    .line 249
    :cond_4
    return-object v4
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 516
    return-void
.end method

.method public a(II)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 476
    const-string/jumbo v0, "loading_dialog"

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/cb;->d(Ljava/lang/String;)V

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGroupCreateError status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mAddedNumbers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/cb;->b(Ljava/lang/String;)V

    .line 479
    if-ne v9, p2, :cond_5

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 480
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 481
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 482
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 483
    new-instance v7, Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    invoke-direct {v7}, Lcom/viber/voip/messages/controller/GroupController$GroupMember;-><init>()V

    .line 484
    new-instance v8, Lcom/viber/jni/GroupUserInfo;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/contacts/ui/cn;

    invoke-virtual {v2}, Lcom/viber/voip/contacts/ui/cn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v1, v2, v3}, Lcom/viber/jni/GroupUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v7, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    .line 485
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/ui/cn;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/cn;->a(Lcom/viber/voip/contacts/ui/cn;)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/ui/cn;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/cn;->a(Lcom/viber/voip/contacts/ui/cn;)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/e;->getId()J

    move-result-wide v1

    :goto_2
    iput-wide v1, v7, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->b:J

    .line 486
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/ui/cn;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/cn;->a(Lcom/viber/voip/contacts/ui/cn;)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/ui/cn;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/cn;->a(Lcom/viber/voip/contacts/ui/cn;)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/e;->b()Landroid/net/Uri;

    move-result-object v1

    :goto_3
    iput-object v1, v7, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->c:Landroid/net/Uri;

    .line 488
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/ui/cn;

    iget-boolean v1, v1, Lcom/viber/voip/contacts/ui/cn;->c:Z

    if-nez v1, :cond_3

    .line 489
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto/16 :goto_0

    .line 485
    :cond_1
    const-wide/16 v1, -0x1

    goto :goto_2

    :cond_2
    move-object v1, v3

    .line 486
    goto :goto_3

    .line 491
    :cond_3
    iget-object v0, v7, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    iget-object v0, v0, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 494
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/viber/voip/contacts/ui/cg;

    invoke-direct {v1, p0, v4}, Lcom/viber/voip/contacts/ui/cg;-><init>(Lcom/viber/voip/contacts/ui/cb;Ljava/util/Map;)V

    invoke-virtual {p0, v0, v5, v9, v1}, Lcom/viber/voip/contacts/ui/cb;->a(Landroid/app/Activity;Ljava/util/Map;ZLandroid/content/DialogInterface$OnClickListener;)V

    .line 506
    :goto_4
    return-void

    .line 504
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->a:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f0c03ad

    const v2, 0x7f0c064a

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    goto :goto_4
.end method

.method public a(IJJLjava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 464
    iget v0, p0, Lcom/viber/voip/contacts/ui/cb;->h:I

    if-eq v0, p1, :cond_0

    .line 472
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->a:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x1

    new-instance v2, Lcom/viber/voip/contacts/ui/cf;

    invoke-direct {v2, p0, p2, p3}, Lcom/viber/voip/contacts/ui/cf;-><init>(Lcom/viber/voip/contacts/ui/cb;J)V

    invoke-virtual {p0, v0, p6, v1, v2}, Lcom/viber/voip/contacts/ui/cb;->a(Landroid/app/Activity;Ljava/util/Map;ZLandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public a(IJLjava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    iget v0, p0, Lcom/viber/voip/contacts/ui/cb;->h:I

    if-eq v0, p1, :cond_0

    .line 551
    :goto_0
    return-void

    .line 530
    :cond_0
    const-string/jumbo v0, "add_participants_dialog"

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/cb;->d(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/cb;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 533
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->a:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x0

    new-instance v2, Lcom/viber/voip/contacts/ui/ci;

    invoke-direct {v2, p0, p2, p3}, Lcom/viber/voip/contacts/ui/ci;-><init>(Lcom/viber/voip/contacts/ui/cb;J)V

    invoke-virtual {p0, v0, p4, v1, v2}, Lcom/viber/voip/contacts/ui/cb;->a(Landroid/app/Activity;Ljava/util/Map;ZLandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method protected a(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    const v6, 0x104000a

    const/4 v5, 0x1

    .line 403
    new-instance v1, Lcom/viber/voip/util/ba;

    invoke-direct {v1, p1}, Lcom/viber/voip/util/ba;-><init>(Landroid/app/Activity;)V

    .line 404
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 406
    const v2, 0x7f0c0392

    const v3, 0x7f0c0393

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p1, v2, v3, v0}, Lcom/viber/voip/contacts/ui/cb;->a(Landroid/content/Context;II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 412
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v2

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v4, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "711b"

    invoke-virtual {v3, v4}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 417
    :cond_0
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0391

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/viber/voip/contacts/ui/ce;

    invoke-direct {v2, p0, p3}, Lcom/viber/voip/contacts/ui/ce;-><init>(Lcom/viber/voip/contacts/ui/cb;Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 430
    invoke-virtual {v1, v0, v6}, Lcom/viber/voip/util/ba;->a(Landroid/app/AlertDialog$Builder;I)V

    .line 432
    :cond_1
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 433
    const v2, 0x7f0c0395

    const v3, 0x7f0c0396

    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p1, v2, v3, v0}, Lcom/viber/voip/contacts/ui/cb;->a(Landroid/content/Context;II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0394

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 440
    invoke-virtual {v1, v0, v6}, Lcom/viber/voip/util/ba;->a(Landroid/app/AlertDialog$Builder;I)V

    .line 442
    :cond_2
    invoke-virtual {v1, p5}, Lcom/viber/voip/util/ba;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 443
    return-void

    .line 413
    :cond_3
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 414
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v2

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v4, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "711"

    invoke-virtual {v3, v4}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0
.end method

.method protected a(Landroid/app/Activity;Ljava/util/Map;ZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 329
    if-eqz p2, :cond_0

    .line 336
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 337
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 338
    new-instance v0, Lcom/viber/voip/contacts/ui/cd;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/contacts/ui/cd;-><init>(Lcom/viber/voip/contacts/ui/cb;Ljava/util/Map;Ljava/util/Map;Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;)V

    .line 351
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 352
    invoke-static {v1, v1, v0}, Lcom/viber/voip/util/w;->a(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/ag;)V

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {p0, p1, p3, p4}, Lcom/viber/voip/contacts/ui/cb;->a(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;)V

    .line 357
    :cond_2
    return-void
.end method

.method protected a(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 397
    if-eqz p3, :cond_0

    .line 398
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-interface {p3, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 399
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/contacts/b/e;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 233
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->f:Lcom/viber/voip/contacts/ui/co;

    invoke-interface {v0, v1, p1, p2, v1}, Lcom/viber/voip/contacts/ui/co;->a(ZLcom/viber/voip/contacts/b/e;Ljava/lang/String;Z)V

    .line 235
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 594
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/ui/cb;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    :goto_0
    monitor-exit p0

    return-void

    .line 596
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0, p1, p1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 598
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v1

    .line 600
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/cb;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 605
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 606
    const-string/jumbo v0, "check_number_dialog"

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/cb;->c(Ljava/lang/String;)V

    .line 607
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/contacts/ui/ck;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/contacts/ui/ck;-><init>(Lcom/viber/voip/contacts/ui/cb;Landroid/view/View;)V

    invoke-static {v0, p1, v1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Lcom/viber/voip/util/hj;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/util/Map;Z)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 164
    .line 165
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 166
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 168
    :cond_0
    invoke-static {}, Lcom/viber/voip/contacts/ui/cb;->b()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/contacts/ui/cb;->e:I

    .line 169
    iget v0, p0, Lcom/viber/voip/contacts/ui/cb;->e:I

    if-gez v0, :cond_1

    .line 170
    iput v2, p0, Lcom/viber/voip/contacts/ui/cb;->e:I

    .line 172
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/contacts/ui/cb;->b(Ljava/util/Map;Z)V

    .line 173
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a(ZLcom/viber/voip/contacts/b/e;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 190
    invoke-interface {p2}, Lcom/viber/voip/contacts/b/e;->h()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/i;

    .line 191
    new-instance v3, Lcom/viber/voip/contacts/b/b/a/e;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "0"

    invoke-direct {v3, v0, v4}, Lcom/viber/voip/contacts/b/b/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/cb;->i()I

    move-result v0

    iget v2, p0, Lcom/viber/voip/contacts/ui/cb;->e:I

    if-lt v0, v2, :cond_2

    .line 214
    :cond_1
    :goto_1
    return-void

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/cb;->h()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/cb;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/contacts/ui/cc;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/viber/voip/contacts/ui/cc;-><init>(Lcom/viber/voip/contacts/ui/cb;ZLcom/viber/voip/contacts/b/e;Z)V

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/w;->a(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Collection;Lcom/viber/voip/util/ai;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(J)[Lcom/viber/voip/messages/controller/GroupController$GroupMember;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 253
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 254
    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/cb;->a(Z)Ljava/util/Map;

    move-result-object v0

    .line 255
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v1, [Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    .line 256
    return-object v0

    :cond_0
    move v0, v1

    .line 253
    goto :goto_0
.end method

.method public b(Z)I
    .locals 4
    .parameter

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 311
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/cb;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 312
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/ui/cn;

    iget-boolean v1, v1, Lcom/viber/voip/contacts/ui/cn;->a:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/ui/cn;

    iget-boolean v0, v0, Lcom/viber/voip/contacts/ui/cn;->b:Z

    if-nez v0, :cond_2

    .line 313
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_1
    move v2, v0

    goto :goto_0

    .line 316
    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public b(J)V
    .locals 0
    .parameter

    .prologue
    .line 511
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/controller/c/e;->b(Lcom/viber/voip/messages/controller/dc;)V

    .line 157
    return-void
.end method

.method public c(J)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 554
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    move v1, v2

    .line 556
    :goto_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/contacts/ui/cb;->a(Z)Ljava/util/Map;

    move-result-object v4

    .line 557
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v5, v3, [Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    invoke-interface {v0, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    .line 558
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v5

    .line 565
    if-nez v1, :cond_4

    .line 566
    const-string/jumbo v1, "loading_dialog"

    invoke-direct {p0, v1}, Lcom/viber/voip/contacts/ui/cb;->c(Ljava/lang/String;)V

    .line 567
    array-length v1, v0

    if-ne v1, v2, :cond_3

    .line 568
    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    .line 569
    sget-boolean v1, Lcom/viber/voip/contacts/ui/cb;->j:Z

    if-nez v1, :cond_2

    .line 570
    const-string/jumbo v1, "Create new 1to1 conversation"

    invoke-direct {p0, v1}, Lcom/viber/voip/contacts/ui/cb;->b(Ljava/lang/String;)V

    .line 571
    iget-object v1, v0, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    iget-object v2, v0, Lcom/viber/jni/GroupUserInfo;->clientName:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/ui/cn;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/cn;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/viber/voip/contacts/ui/cb;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 590
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 554
    goto :goto_0

    .line 573
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.CALL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 574
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 575
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 576
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_1

    .line 578
    :cond_3
    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 579
    const-string/jumbo v1, "Create new group conversation"

    invoke-direct {p0, v1}, Lcom/viber/voip/contacts/ui/cb;->b(Ljava/lang/String;)V

    .line 580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v6

    long-to-int v1, v1

    iput v1, p0, Lcom/viber/voip/contacts/ui/cb;->h:I

    .line 581
    invoke-interface {v5}, Lcom/viber/voip/messages/i;->d()Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/contacts/ui/cb;->h:I

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/messages/controller/GroupController;->a(I[Lcom/viber/voip/messages/controller/GroupController$GroupMember;)V

    goto :goto_1

    .line 584
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add participans to existed group, groupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/contacts/ui/cb;->b(Ljava/lang/String;)V

    .line 585
    const-string/jumbo v1, "add_participants_dialog"

    array-length v2, v0

    invoke-direct {p0, v1, v2}, Lcom/viber/voip/contacts/ui/cb;->a(Ljava/lang/String;I)V

    .line 586
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/cb;->g:Landroid/os/Handler;

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/cb;->k:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 587
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v6

    long-to-int v1, v1

    iput v1, p0, Lcom/viber/voip/contacts/ui/cb;->h:I

    .line 588
    invoke-interface {v5}, Lcom/viber/voip/messages/i;->d()Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/contacts/ui/cb;->h:I

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/viber/voip/messages/controller/GroupController;->a(IJ[Lcom/viber/voip/messages/controller/GroupController$GroupMember;)V

    goto/16 :goto_1
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/cb;->i()I

    move-result v0

    iget v1, p0, Lcom/viber/voip/contacts/ui/cb;->e:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()[Lcom/viber/voip/messages/controller/GroupController$GroupMember;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 260
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 261
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 262
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/cb;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 263
    new-instance v6, Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    invoke-direct {v6}, Lcom/viber/voip/messages/controller/GroupController$GroupMember;-><init>()V

    .line 264
    new-instance v7, Lcom/viber/jni/GroupUserInfo;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/contacts/ui/cn;

    invoke-virtual {v2}, Lcom/viber/voip/contacts/ui/cn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v1, v2, v3}, Lcom/viber/jni/GroupUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v6, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    .line 265
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/ui/cn;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/cn;->a(Lcom/viber/voip/contacts/ui/cn;)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/ui/cn;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/cn;->a(Lcom/viber/voip/contacts/ui/cn;)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/e;->c()J

    move-result-wide v1

    :goto_1
    iput-wide v1, v6, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->b:J

    .line 266
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/ui/cn;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/cn;->a(Lcom/viber/voip/contacts/ui/cn;)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/ui/cn;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/cn;->a(Lcom/viber/voip/contacts/ui/cn;)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/e;->b()Landroid/net/Uri;

    move-result-object v1

    :goto_2
    iput-object v1, v6, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->c:Landroid/net/Uri;

    .line 268
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 265
    :cond_1
    const-wide/16 v1, -0x1

    goto :goto_1

    :cond_2
    move-object v1, v3

    .line 266
    goto :goto_2

    .line 271
    :cond_3
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    return-object v0
.end method

.method public f()[Lcom/viber/voip/messages/controller/GroupController$GroupMember;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 275
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 276
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 277
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/cb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 278
    new-instance v6, Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    invoke-direct {v6}, Lcom/viber/voip/messages/controller/GroupController$GroupMember;-><init>()V

    .line 279
    new-instance v7, Lcom/viber/jni/GroupUserInfo;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/contacts/ui/cn;

    invoke-virtual {v2}, Lcom/viber/voip/contacts/ui/cn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v1, v2, v3}, Lcom/viber/jni/GroupUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v6, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    .line 280
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/ui/cn;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/cn;->a(Lcom/viber/voip/contacts/ui/cn;)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/ui/cn;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/cn;->a(Lcom/viber/voip/contacts/ui/cn;)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/e;->c()J

    move-result-wide v1

    :goto_1
    iput-wide v1, v6, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->b:J

    .line 281
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/ui/cn;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/cn;->a(Lcom/viber/voip/contacts/ui/cn;)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/ui/cn;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/cn;->a(Lcom/viber/voip/contacts/ui/cn;)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/e;->b()Landroid/net/Uri;

    move-result-object v1

    :goto_2
    iput-object v1, v6, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->c:Landroid/net/Uri;

    .line 283
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 280
    :cond_1
    const-wide/16 v1, -0x1

    goto :goto_1

    :cond_2
    move-object v1, v3

    .line 281
    goto :goto_2

    .line 286
    :cond_3
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    return-object v0
.end method

.method public g()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 291
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 292
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/ui/cn;

    iget-boolean v1, v1, Lcom/viber/voip/contacts/ui/cn;->a:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    :cond_1
    return-object v2
.end method

.method public h()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 299
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cb;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 300
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/ui/cn;

    iget-boolean v1, v1, Lcom/viber/voip/contacts/ui/cn;->b:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    :cond_1
    return-object v2
.end method

.method public i()I
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/cb;->b(Z)I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/viber/voip/contacts/ui/cb;->e:I

    return v0
.end method

.method public k()V
    .locals 4

    .prologue
    .line 664
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "514"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 666
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/cb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 667
    const v1, 0x7f0c0525

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c02ee

    new-instance v3, Lcom/viber/voip/contacts/ui/cm;

    invoke-direct {v3, p0}, Lcom/viber/voip/contacts/ui/cm;-><init>(Lcom/viber/voip/contacts/ui/cb;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 679
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 680
    return-void
.end method
