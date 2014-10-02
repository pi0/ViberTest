.class public Lcom/viber/voip/billing/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static m:Lcom/viber/voip/billing/br;

.field private static final t:Ljava/lang/String;


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field e:Landroid/content/Context;

.field f:Lcom/android/b/a/a;

.field g:Landroid/content/ServiceConnection;

.field h:I

.field i:Ljava/util/concurrent/ExecutorService;

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/billing/bl;",
            ">;"
        }
    .end annotation
.end field

.field k:Z

.field l:Z

.field n:Lcom/viber/voip/billing/bh;

.field private o:Lcom/viber/voip/billing/be;

.field private p:Landroid/os/Handler;

.field private q:Lcom/viber/voip/billing/bo;

.field private r:Ljava/lang/Runnable;

.field private s:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/viber/voip/billing/br;

    invoke-direct {v0}, Lcom/viber/voip/billing/br;-><init>()V

    sput-object v0, Lcom/viber/voip/billing/ap;->m:Lcom/viber/voip/billing/br;

    .line 1240
    const-class v0, Lcom/viber/voip/billing/ap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/billing/ap;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v1, p0, Lcom/viber/voip/billing/ap;->a:Z

    .line 79
    const-string/jumbo v0, "IabHelper"

    iput-object v0, p0, Lcom/viber/voip/billing/ap;->b:Ljava/lang/String;

    .line 82
    iput-boolean v1, p0, Lcom/viber/voip/billing/ap;->c:Z

    .line 85
    iput-boolean v1, p0, Lcom/viber/voip/billing/ap;->d:Z

    .line 101
    iput-boolean v1, p0, Lcom/viber/voip/billing/ap;->l:Z

    .line 156
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/billing/ap;->p:Landroid/os/Handler;

    .line 928
    new-instance v0, Lcom/viber/voip/billing/ba;

    invoke-direct {v0, p0}, Lcom/viber/voip/billing/ba;-><init>(Lcom/viber/voip/billing/ap;)V

    iput-object v0, p0, Lcom/viber/voip/billing/ap;->s:Ljava/lang/Runnable;

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/billing/ap;->e:Landroid/content/Context;

    .line 168
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/billing/ap;->i:Ljava/util/concurrent/ExecutorService;

    .line 169
    const-string/jumbo v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/billing/ap;->k:Z

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/billing/ap;->j:Ljava/util/ArrayList;

    .line 172
    return-void
.end method

.method private a(Landroid/content/Intent;)I
    .locals 4
    .parameter

    .prologue
    .line 961
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 962
    if-nez v0, :cond_0

    .line 963
    const-string/jumbo v0, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->b(Ljava/lang/String;)V

    .line 964
    const/4 v0, 0x0

    .line 967
    :goto_0
    return v0

    .line 966
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 967
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 969
    :cond_2
    const-string/jumbo v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/viber/voip/billing/ap;->b(Ljava/lang/String;)V

    .line 970
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/billing/ap;->b(Ljava/lang/String;)V

    .line 971
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Landroid/os/Bundle;)I
    .locals 4
    .parameter

    .prologue
    .line 945
    const-string/jumbo v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 946
    if-nez v0, :cond_0

    .line 947
    const-string/jumbo v0, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 948
    const/4 v0, 0x0

    .line 951
    :goto_0
    return v0

    .line 950
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 951
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 953
    :cond_2
    const-string/jumbo v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/viber/voip/billing/ap;->b(Ljava/lang/String;)V

    .line 954
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/billing/ap;->b(Ljava/lang/String;)V

    .line 955
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic a(Lcom/viber/voip/billing/ap;Landroid/os/Bundle;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/viber/voip/billing/ap;->a(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/billing/ap;Ljava/lang/String;Lcom/viber/voip/billing/bm;Ljava/util/List;)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;Lcom/viber/voip/billing/bm;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method private a(Lcom/viber/voip/billing/bm;Ljava/lang/String;)I
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Querying owned items, item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/billing/ap;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 979
    const/4 v0, 0x0

    .line 981
    invoke-direct {p0}, Lcom/viber/voip/billing/ap;->d()Lcom/android/b/a/a;

    move-result-object v5

    .line 984
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Calling getPurchases with continuation token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 985
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/viber/voip/billing/ap;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2, p2, v0}, Lcom/android/b/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 988
    invoke-direct {p0, v6}, Lcom/viber/voip/billing/ap;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Owned items response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 990
    if-eqz v0, :cond_1

    .line 991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPurchases() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/viber/voip/billing/ap;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    move v4, v0

    .line 1030
    :goto_0
    return v4

    .line 994
    :cond_1
    const-string/jumbo v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 997
    :cond_2
    const-string/jumbo v0, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->b(Ljava/lang/String;)V

    .line 998
    const/16 v4, -0x3ea

    goto :goto_0

    .line 1001
    :cond_3
    const-string/jumbo v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1003
    const-string/jumbo v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1005
    const-string/jumbo v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    move v3, v4

    .line 1008
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 1009
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1010
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1011
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1014
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ProductId is owned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 1015
    new-instance v2, Lcom/viber/voip/billing/bu;

    invoke-direct {v2, v0, v1}, Lcom/viber/voip/billing/bu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v2}, Lcom/viber/voip/billing/bu;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1018
    const-string/jumbo v1, "BUG: empty/null token!"

    invoke-virtual {p0, v1}, Lcom/viber/voip/billing/ap;->c(Ljava/lang/String;)V

    .line 1019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Purchase data: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 1023
    :cond_4
    invoke-virtual {p1, v2}, Lcom/viber/voip/billing/bm;->a(Lcom/viber/voip/billing/bu;)V

    .line 1008
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1026
    :cond_5
    const-string/jumbo v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Continuation token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 1028
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/viber/voip/billing/bm;Ljava/util/List;)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/viber/voip/billing/bm;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/billing/bn;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1035
    const-string/jumbo v0, "queryProductDetails"

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 1037
    invoke-direct {p0}, Lcom/viber/voip/billing/ap;->d()Lcom/android/b/a/a;

    move-result-object v4

    .line 1039
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    invoke-virtual {p2}, Lcom/viber/voip/billing/bm;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/bn;

    .line 1042
    sget-object v5, Lcom/viber/voip/billing/ap;->m:Lcom/viber/voip/billing/br;

    invoke-virtual {v5, v0}, Lcom/viber/voip/billing/br;->a(Lcom/viber/voip/billing/bn;)Lcom/viber/voip/billing/bq;

    move-result-object v5

    .line 1043
    if-eqz v5, :cond_0

    .line 1044
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queryProductDetails, owned product, cached details: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {p2, v5}, Lcom/viber/voip/billing/bm;->a(Lcom/viber/voip/billing/bq;)V

    goto :goto_0

    .line 1047
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "queryProductDetails, owned product, will query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v0}, Lcom/viber/voip/billing/bn;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1051
    :cond_1
    if-eqz p3, :cond_3

    .line 1052
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/bn;

    .line 1053
    sget-object v5, Lcom/viber/voip/billing/ap;->m:Lcom/viber/voip/billing/br;

    invoke-virtual {v5, v0}, Lcom/viber/voip/billing/br;->a(Lcom/viber/voip/billing/bn;)Lcom/viber/voip/billing/bq;

    move-result-object v5

    .line 1054
    if-eqz v5, :cond_2

    .line 1055
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queryProductDetails, more products, cached details: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p2, v5}, Lcom/viber/voip/billing/bm;->a(Lcom/viber/voip/billing/bq;)V

    goto :goto_1

    .line 1058
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "queryProductDetails, more products, will query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {v0}, Lcom/viber/voip/billing/bn;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1064
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 1065
    const-string/jumbo v0, "queryProductDetails: nothing to query."

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 1107
    :cond_4
    :goto_2
    return v2

    .line 1070
    :cond_5
    invoke-direct {p0, v1}, Lcom/viber/voip/billing/ap;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1072
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1073
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1074
    add-int/lit8 v3, v1, 0x1

    .line 1075
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1076
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1077
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1079
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queryProductDetails, batch #"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, ", querying ids "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 1082
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1083
    const-string/jumbo v7, "ITEM_ID_LIST"

    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1084
    const/4 v0, 0x3

    iget-object v7, p0, Lcom/viber/voip/billing/ap;->e:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v0, v7, p1, v1}, Lcom/android/b/a/a;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1086
    const-string/jumbo v1, "DETAILS_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1087
    invoke-direct {p0, v0}, Lcom/viber/voip/billing/ap;->a(Landroid/os/Bundle;)I

    move-result v2

    .line 1088
    if-eqz v2, :cond_7

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getProductDetails() failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/viber/voip/billing/ap;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1093
    :cond_7
    const-string/jumbo v0, "getProductDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->b(Ljava/lang/String;)V

    .line 1094
    const/16 v2, -0x3ea

    goto/16 :goto_2

    .line 1098
    :cond_8
    const-string/jumbo v1, "DETAILS_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1100
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1101
    new-instance v7, Lcom/viber/voip/billing/bq;

    invoke-direct {v7, p1, v0}, Lcom/viber/voip/billing/bq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Got productId details: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p2, v7}, Lcom/viber/voip/billing/bm;->a(Lcom/viber/voip/billing/bq;)V

    .line 1104
    sget-object v0, Lcom/viber/voip/billing/ap;->m:Lcom/viber/voip/billing/br;

    invoke-virtual {v0, v7}, Lcom/viber/voip/billing/br;->a(Lcom/viber/voip/billing/bq;)V

    goto :goto_5

    :cond_9
    move v1, v3

    .line 1106
    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/viber/voip/billing/ap;ZLjava/util/List;)Lcom/viber/voip/billing/bm;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/billing/ap;->a(ZLjava/util/List;)Lcom/viber/voip/billing/bm;

    move-result-object v0

    return-object v0
.end method

.method private a(ZLjava/util/List;)Lcom/viber/voip/billing/bm;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/billing/bn;",
            ">;)",
            "Lcom/viber/voip/billing/bm;"
        }
    .end annotation

    .prologue
    .line 592
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/billing/ap;->a(ZLjava/util/List;Ljava/util/List;)Lcom/viber/voip/billing/bm;

    move-result-object v0

    return-object v0
.end method

.method private a(ZLjava/util/List;Ljava/util/List;)Lcom/viber/voip/billing/bm;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/billing/bn;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/billing/bn;",
            ">;)",
            "Lcom/viber/voip/billing/bm;"
        }
    .end annotation

    .prologue
    .line 610
    const-string/jumbo v0, "queryInventory"

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/ap;->d(Ljava/lang/String;)V

    .line 612
    :try_start_0
    new-instance v0, Lcom/viber/voip/billing/bm;

    invoke-direct {v0}, Lcom/viber/voip/billing/bm;-><init>()V

    .line 613
    const-string/jumbo v1, "inapp"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/bm;Ljava/lang/String;)I

    move-result v1

    .line 614
    if-eqz v1, :cond_0

    .line 615
    new-instance v0, Lcom/viber/voip/billing/ao;

    const-string/jumbo v2, "Error refreshing inventory (querying owned items)."

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/billing/ao;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 642
    :catch_0
    move-exception v0

    .line 643
    new-instance v1, Lcom/viber/voip/billing/ao;

    const/16 v2, -0x3e9

    const-string/jumbo v3, "Remote exception while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/viber/voip/billing/ao;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 618
    :cond_0
    if-eqz p1, :cond_1

    .line 619
    :try_start_1
    const-string/jumbo v1, "inapp"

    invoke-direct {p0, v1, v0, p2}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;Lcom/viber/voip/billing/bm;Ljava/util/List;)I

    move-result v1

    .line 620
    if-eqz v1, :cond_1

    .line 621
    new-instance v0, Lcom/viber/voip/billing/ao;

    const-string/jumbo v2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/billing/ao;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 645
    :catch_1
    move-exception v0

    .line 646
    new-instance v1, Lcom/viber/voip/billing/ao;

    const/16 v2, -0x3ea

    const-string/jumbo v3, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/viber/voip/billing/ao;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 626
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lcom/viber/voip/billing/ap;->d:Z

    if-eqz v1, :cond_3

    .line 627
    const-string/jumbo v1, "subs"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/bm;Ljava/lang/String;)I

    move-result v1

    .line 628
    if-eqz v1, :cond_2

    .line 629
    new-instance v0, Lcom/viber/voip/billing/ao;

    const-string/jumbo v2, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/billing/ao;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 648
    :catch_2
    move-exception v0

    .line 649
    new-instance v1, Lcom/viber/voip/billing/ao;

    const/16 v2, -0x3f0

    const-string/jumbo v3, "Unexpected exception"

    invoke-direct {v1, v2, v3, v0}, Lcom/viber/voip/billing/ao;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 632
    :cond_2
    if-eqz p1, :cond_3

    .line 633
    :try_start_3
    const-string/jumbo v1, "subs"

    invoke-direct {p0, v1, v0, p3}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;Lcom/viber/voip/billing/bm;Ljava/util/List;)I

    move-result v1

    .line 634
    if-eqz v1, :cond_3

    .line 635
    new-instance v0, Lcom/viber/voip/billing/ao;

    const-string/jumbo v2, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/billing/ao;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 640
    :cond_3
    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/billing/ap;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->r:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/billing/ap;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/viber/voip/billing/ap;->r:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 888
    const-string/jumbo v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 892
    const-string/jumbo v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 903
    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    .line 904
    rsub-int v0, p0, -0x3e8

    .line 905
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    .line 911
    :goto_0
    return-object v0

    .line 906
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":Unknown IAB Helper Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 908
    :cond_1
    if-ltz p0, :cond_2

    array-length v1, v0

    if-lt p0, v1, :cond_3

    .line 909
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 911
    :cond_3
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1113
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v3, v0, 0x14

    .line 1114
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v4, v0, 0x14

    .line 1115
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 1116
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1117
    mul-int/lit8 v0, v1, 0x14

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x14

    invoke-virtual {p1, v0, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1118
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1120
    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1122
    :cond_1
    if-eqz v4, :cond_3

    .line 1123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1124
    mul-int/lit8 v0, v3, 0x14

    mul-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1125
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1127
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    :cond_3
    return-object v2
.end method

.method static synthetic a(Lcom/viber/voip/billing/ap;Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bh;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bh;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/billing/ap;Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bi;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bi;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/billing/ap;Lcom/viber/voip/billing/bu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/bu;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/billing/ap;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/viber/voip/billing/ap;->a(Z)V

    return-void
.end method

.method private a(Lcom/viber/voip/billing/bl;)V
    .locals 1
    .parameter

    .prologue
    .line 1171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/bl;Z)V

    .line 1172
    return-void
.end method

.method private declared-synchronized a(Lcom/viber/voip/billing/bl;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->q:Lcom/viber/voip/billing/bo;

    if-nez v0, :cond_2

    .line 1176
    iget-boolean v0, p0, Lcom/viber/voip/billing/ap;->k:Z

    if-eqz v0, :cond_1

    .line 1177
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Queue is blocked, added task to pending queue ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/billing/ap;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/billing/bl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 1183
    :goto_0
    if-eqz p2, :cond_0

    .line 1184
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/ap;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1190
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 1180
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/Runnable;)V

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Added task to executor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/billing/bl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1187
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Attempt to schedule task after IAB setup has failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/billing/bl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 1188
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->q:Lcom/viber/voip/billing/bo;

    invoke-virtual {p1, v0}, Lcom/viber/voip/billing/bl;->a(Lcom/viber/voip/billing/bo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bh;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 496
    if-eqz p2, :cond_0

    .line 497
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->p:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/billing/at;

    invoke-direct {v1, p0, p2, p1}, Lcom/viber/voip/billing/at;-><init>(Lcom/viber/voip/billing/ap;Lcom/viber/voip/billing/bh;Lcom/viber/voip/billing/bo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 504
    :cond_0
    return-void
.end method

.method private a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bi;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/viber/voip/billing/ap;->q:Lcom/viber/voip/billing/bo;

    .line 328
    invoke-interface {p2, p1}, Lcom/viber/voip/billing/bi;->a(Lcom/viber/voip/billing/bo;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportOnInitFailed, result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/bl;

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "calling onInitFailed for task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/viber/voip/billing/bl;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, p1}, Lcom/viber/voip/billing/bl;->a(Lcom/viber/voip/billing/bo;)V

    goto :goto_0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 335
    return-void
.end method

.method private a(Lcom/viber/voip/billing/bu;)V
    .locals 5
    .parameter

    .prologue
    .line 795
    const-string/jumbo v0, "consume"

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/ap;->d(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 798
    new-instance v0, Lcom/viber/voip/billing/ao;

    const/16 v1, -0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Items of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' can\'t be consumed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/billing/ao;-><init>(ILjava/lang/String;)V

    throw v0

    .line 803
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/viber/voip/billing/ap;->d()Lcom/android/b/a/a;

    move-result-object v0

    .line 805
    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->h()Ljava/lang/String;

    move-result-object v1

    .line 806
    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v2

    .line 807
    if-eqz v1, :cond_1

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 808
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Can\'t consume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ". No token."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->b(Ljava/lang/String;)V

    .line 809
    new-instance v0, Lcom/viber/voip/billing/ao;

    const/16 v1, -0x3ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PurchaseInfo is missing token for productId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/billing/ao;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 823
    :catch_0
    move-exception v0

    .line 824
    new-instance v1, Lcom/viber/voip/billing/ao;

    const/16 v2, -0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/viber/voip/billing/ao;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 813
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Consuming productId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 814
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/viber/voip/billing/ap;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4, v1}, Lcom/android/b/a/a;->b(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 815
    if-nez v0, :cond_3

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Successfully consumed productId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 828
    return-void

    .line 819
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error consuming consuming productId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ". "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/viber/voip/billing/ap;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 820
    new-instance v1, Lcom/viber/voip/billing/ao;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error consuming productId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/viber/voip/billing/ao;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 825
    :catch_1
    move-exception v0

    .line 826
    new-instance v1, Lcom/viber/voip/billing/ao;

    const/16 v2, -0x3f0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception while consuming. PurchaseInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/viber/voip/billing/ao;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1206
    invoke-direct {p0}, Lcom/viber/voip/billing/ap;->c()V

    .line 1207
    return-void
.end method

.method private a(Ljava/util/List;Lcom/viber/voip/billing/bf;Lcom/viber/voip/billing/bg;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/billing/bu;",
            ">;",
            "Lcom/viber/voip/billing/bf;",
            "Lcom/viber/voip/billing/bg;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1135
    const-string/jumbo v0, "consumeAsyncInternal"

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 1136
    new-instance v0, Lcom/viber/voip/billing/bb;

    const-string/jumbo v2, "consumeAsyncInternal"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/billing/bb;-><init>(Lcom/viber/voip/billing/ap;Ljava/lang/String;Ljava/util/List;Lcom/viber/voip/billing/bf;Lcom/viber/voip/billing/bg;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/bl;)V

    .line 1168
    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1193
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setQueueBlocked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 1194
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/billing/ap;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1195
    iput-boolean p1, p0, Lcom/viber/voip/billing/ap;->k:Z

    .line 1196
    iget-boolean v0, p0, Lcom/viber/voip/billing/ap;->k:Z

    if-nez v0, :cond_1

    .line 1197
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/bl;

    .line 1198
    invoke-direct {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1200
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1202
    :cond_1
    monitor-exit p0

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/billing/ap;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/billing/ap;)Lcom/android/b/a/a;
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/viber/voip/billing/ap;->d()Lcom/android/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->o:Lcom/viber/voip/billing/be;

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->o:Lcom/viber/voip/billing/be;

    invoke-interface {v0}, Lcom/viber/voip/billing/be;->a()V

    .line 1213
    :cond_0
    return-void
.end method

.method private d()Lcom/android/b/a/a;
    .locals 2

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->f:Lcom/android/b/a/a;

    .line 1217
    if-nez v0, :cond_0

    .line 1218
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "mService == null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1220
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/billing/ap;->e:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1221
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "mContext == null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1223
    :cond_1
    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/billing/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/viber/voip/billing/ap;->c()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 937
    iget-boolean v0, p0, Lcom/viber/voip/billing/ap;->c:Z

    if-nez v0, :cond_0

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->b(Ljava/lang/String;)V

    .line 939
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 941
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 345
    const-string/jumbo v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 346
    iput-boolean v3, p0, Lcom/viber/voip/billing/ap;->c:Z

    .line 347
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->g:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 348
    const-string/jumbo v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/billing/ap;->l:Z

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/billing/ap;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 351
    iput-boolean v3, p0, Lcom/viber/voip/billing/ap;->l:Z

    .line 353
    :cond_0
    iput-object v2, p0, Lcom/viber/voip/billing/ap;->g:Landroid/content/ServiceConnection;

    .line 354
    iput-object v2, p0, Lcom/viber/voip/billing/ap;->f:Lcom/android/b/a/a;

    .line 355
    iput-object v2, p0, Lcom/viber/voip/billing/ap;->n:Lcom/viber/voip/billing/bh;

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->i:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 359
    iput-object v2, p0, Lcom/viber/voip/billing/ap;->i:Ljava/util/concurrent/ExecutorService;

    .line 361
    :cond_2
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/viber/voip/billing/bn;ILcom/viber/voip/billing/bh;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    const-string/jumbo v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/billing/ap;->a(Landroid/app/Activity;Lcom/viber/voip/billing/bn;Ljava/lang/String;ILcom/viber/voip/billing/bh;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/viber/voip/billing/bn;Ljava/lang/String;ILcom/viber/voip/billing/bh;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 427
    new-instance v0, Lcom/viber/voip/billing/as;

    const-string/jumbo v2, "launchPurchaseFlow"

    move-object v1, p0

    move-object v3, p3

    move-object v4, p5

    move-object v5, p2

    move-object v6, p6

    move v7, p4

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/billing/as;-><init>(Lcom/viber/voip/billing/ap;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/billing/bh;Lcom/viber/voip/billing/bn;Ljava/lang/String;ILandroid/app/Activity;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/bl;Z)V

    .line 493
    return-void
.end method

.method public a(Lcom/viber/voip/billing/be;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/viber/voip/billing/ap;->o:Lcom/viber/voip/billing/be;

    .line 176
    return-void
.end method

.method a(Lcom/viber/voip/billing/bi;)V
    .locals 4
    .parameter

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/viber/voip/billing/ap;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    const-string/jumbo v0, "Starting in-app billing setup."

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 234
    new-instance v0, Lcom/viber/voip/billing/aq;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/billing/aq;-><init>(Lcom/viber/voip/billing/ap;Lcom/viber/voip/billing/bi;)V

    iput-object v0, p0, Lcom/viber/voip/billing/ap;->g:Landroid/content/ServiceConnection;

    .line 314
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/viber/voip/billing/ap;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/viber/voip/billing/ap;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/viber/voip/billing/ap;->g:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/billing/ap;->l:Z

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_1
    new-instance v0, Lcom/viber/voip/billing/bo;

    const/4 v1, 0x3

    const-string/jumbo v2, "Billing service unavailable on device."

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bi;)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/billing/bn;Lcom/viber/voip/billing/bk;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 771
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 772
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    invoke-virtual {p0, v0, p2}, Lcom/viber/voip/billing/ap;->a(Ljava/util/List;Lcom/viber/voip/billing/bk;)V

    .line 774
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/bf;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 866
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 867
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/viber/voip/billing/ap;->a(Ljava/util/List;Lcom/viber/voip/billing/bf;Lcom/viber/voip/billing/bg;)V

    .line 869
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1230
    return-void
.end method

.method public a(Ljava/util/List;Lcom/viber/voip/billing/bg;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/billing/bu;",
            ">;",
            "Lcom/viber/voip/billing/bg;",
            ")V"
        }
    .end annotation

    .prologue
    .line 877
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/viber/voip/billing/ap;->a(Ljava/util/List;Lcom/viber/voip/billing/bf;Lcom/viber/voip/billing/bg;)V

    .line 878
    return-void
.end method

.method public a(Ljava/util/List;Lcom/viber/voip/billing/bk;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/billing/bn;",
            ">;",
            "Lcom/viber/voip/billing/bk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 725
    new-instance v0, Lcom/viber/voip/billing/ax;

    const-string/jumbo v1, "queryProductDetailsAsync"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/viber/voip/billing/ax;-><init>(Lcom/viber/voip/billing/ap;Ljava/lang/String;Ljava/util/List;Lcom/viber/voip/billing/bk;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/bl;)V

    .line 768
    return-void
.end method

.method public a(ZLjava/util/List;Lcom/viber/voip/billing/bj;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/billing/bn;",
            ">;",
            "Lcom/viber/voip/billing/bj;",
            ")V"
        }
    .end annotation

    .prologue
    .line 690
    new-instance v0, Lcom/viber/voip/billing/au;

    const-string/jumbo v2, "queryInventoryAsync"

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/billing/au;-><init>(Lcom/viber/voip/billing/ap;Ljava/lang/String;ZLjava/util/List;Lcom/viber/voip/billing/bj;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/bl;)V

    .line 722
    return-void
.end method

.method a(IILandroid/content/Intent;)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/16 v7, -0x3ea

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleActivityResult, requestCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", resultCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 522
    invoke-direct {p0, v0}, Lcom/viber/voip/billing/ap;->a(Z)V

    .line 523
    iget v2, p0, Lcom/viber/voip/billing/ap;->h:I

    if-eq p1, v2, :cond_0

    .line 588
    :goto_0
    return v0

    .line 525
    :cond_0
    const-string/jumbo v0, "handleActivityResult"

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/ap;->d(Ljava/lang/String;)V

    .line 526
    invoke-direct {p0}, Lcom/viber/voip/billing/ap;->c()V

    .line 528
    if-nez p3, :cond_2

    .line 529
    const-string/jumbo v0, "Null data in IAB activity result."

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->b(Ljava/lang/String;)V

    .line 530
    new-instance v0, Lcom/viber/voip/billing/bo;

    const-string/jumbo v2, "Null data in IAB result"

    invoke-direct {v0, v7, v2}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    .line 531
    iget-object v2, p0, Lcom/viber/voip/billing/ap;->n:Lcom/viber/voip/billing/bh;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/viber/voip/billing/ap;->n:Lcom/viber/voip/billing/bh;

    invoke-interface {v2, v0, v6}, Lcom/viber/voip/billing/bh;->a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bu;)V

    :cond_1
    move v0, v1

    .line 532
    goto :goto_0

    .line 535
    :cond_2
    invoke-direct {p0, p3}, Lcom/viber/voip/billing/ap;->a(Landroid/content/Intent;)I

    move-result v0

    .line 536
    const-string/jumbo v2, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 537
    const-string/jumbo v3, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 539
    if-ne p2, v4, :cond_8

    if-nez v0, :cond_8

    .line 540
    const-string/jumbo v0, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Purchase data: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Data signature: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Extras: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 545
    if-eqz v2, :cond_3

    if-nez v3, :cond_5

    .line 546
    :cond_3
    const-string/jumbo v0, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->b(Ljava/lang/String;)V

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Extras: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 548
    new-instance v0, Lcom/viber/voip/billing/bo;

    const/16 v2, -0x3f0

    const-string/jumbo v3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v0, v2, v3}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    .line 549
    iget-object v2, p0, Lcom/viber/voip/billing/ap;->n:Lcom/viber/voip/billing/bh;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/viber/voip/billing/ap;->n:Lcom/viber/voip/billing/bh;

    invoke-interface {v2, v0, v6}, Lcom/viber/voip/billing/bh;->a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bu;)V

    :cond_4
    move v0, v1

    .line 550
    goto/16 :goto_0

    .line 555
    :cond_5
    :try_start_0
    new-instance v0, Lcom/viber/voip/billing/bu;

    invoke-direct {v0, v2, v3}, Lcom/viber/voip/billing/bu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v2, p0, Lcom/viber/voip/billing/ap;->n:Lcom/viber/voip/billing/bh;

    if-eqz v2, :cond_6

    .line 557
    iget-object v2, p0, Lcom/viber/voip/billing/ap;->n:Lcom/viber/voip/billing/bh;

    new-instance v3, Lcom/viber/voip/billing/bo;

    const/4 v4, 0x0

    const-string/jumbo v5, "Success"

    invoke-direct {v3, v4, v5}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3, v0}, Lcom/viber/voip/billing/bh;->a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bu;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    move v0, v1

    .line 588
    goto/16 :goto_0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    const-string/jumbo v2, "Failed to parse purchase data."

    invoke-virtual {p0, v2}, Lcom/viber/voip/billing/ap;->b(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 563
    new-instance v0, Lcom/viber/voip/billing/bo;

    const-string/jumbo v2, "Failed to parse purchase data."

    invoke-direct {v0, v7, v2}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    .line 564
    iget-object v2, p0, Lcom/viber/voip/billing/ap;->n:Lcom/viber/voip/billing/bh;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/viber/voip/billing/ap;->n:Lcom/viber/voip/billing/bh;

    invoke-interface {v2, v0, v6}, Lcom/viber/voip/billing/bh;->a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bu;)V

    :cond_7
    move v0, v1

    .line 565
    goto/16 :goto_0

    .line 569
    :cond_8
    if-ne p2, v4, :cond_9

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/viber/voip/billing/ap;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 572
    iget-object v2, p0, Lcom/viber/voip/billing/ap;->n:Lcom/viber/voip/billing/bh;

    if-eqz v2, :cond_6

    .line 573
    new-instance v2, Lcom/viber/voip/billing/bo;

    const-string/jumbo v3, "Problem purchashing item."

    invoke-direct {v2, v0, v3}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->n:Lcom/viber/voip/billing/bh;

    invoke-interface {v0, v2, v6}, Lcom/viber/voip/billing/bh;->a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bu;)V

    goto :goto_1

    .line 577
    :cond_9
    if-nez p2, :cond_a

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Purchase canceled - Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/viber/voip/billing/ap;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 579
    new-instance v2, Lcom/viber/voip/billing/bo;

    const-string/jumbo v3, "User canceled."

    invoke-direct {v2, v0, v3}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->n:Lcom/viber/voip/billing/bh;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/viber/voip/billing/ap;->n:Lcom/viber/voip/billing/bh;

    invoke-interface {v0, v2, v6}, Lcom/viber/voip/billing/bh;->a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bu;)V

    goto :goto_1

    .line 583
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Purchase failed. Result code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/viber/voip/billing/ap;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->b(Ljava/lang/String;)V

    .line 585
    new-instance v0, Lcom/viber/voip/billing/bo;

    const/16 v2, -0x3ee

    const-string/jumbo v3, "Unknown purchase response."

    invoke-direct {v0, v2, v3}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    .line 586
    iget-object v2, p0, Lcom/viber/voip/billing/ap;->n:Lcom/viber/voip/billing/bh;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/viber/voip/billing/ap;->n:Lcom/viber/voip/billing/bh;

    invoke-interface {v2, v0, v6}, Lcom/viber/voip/billing/bh;->a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bu;)V

    goto/16 :goto_1
.end method

.method public declared-synchronized b()V
    .locals 4

    .prologue
    .line 920
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/billing/ap;->k:Z

    if-eqz v0, :cond_0

    .line 921
    const-string/jumbo v0, "parentActivityResumed, unblocking queue after 10000"

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lcom/viber/voip/billing/ap;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/billing/ap;->s:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    :goto_0
    monitor-exit p0

    return-void

    .line 924
    :cond_0
    :try_start_1
    const-string/jumbo v0, "parentActivityResumed, queue not blocked"

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 920
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1233
    sget-object v0, Lcom/viber/voip/billing/ap;->t:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1237
    sget-object v0, Lcom/viber/voip/billing/ap;->t:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WARNING: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    return-void
.end method
