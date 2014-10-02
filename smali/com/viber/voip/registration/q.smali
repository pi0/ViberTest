.class Lcom/viber/voip/registration/q;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/ActivationController;

.field private final b:Lcom/viber/voip/util/t;


# direct methods
.method private constructor <init>(Lcom/viber/voip/registration/ActivationController;)V
    .locals 1
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/viber/voip/registration/q;->a:Lcom/viber/voip/registration/ActivationController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 494
    new-instance v0, Lcom/viber/voip/util/t;

    invoke-direct {v0}, Lcom/viber/voip/util/t;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/registration/q;->b:Lcom/viber/voip/util/t;

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/registration/ActivationController;Lcom/viber/voip/registration/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 493
    invoke-direct {p0, p1}, Lcom/viber/voip/registration/q;-><init>(Lcom/viber/voip/registration/ActivationController;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter

    .prologue
    .line 499
    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getCountryCodeManager()Lcom/viber/voip/registration/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/q;->b:Lcom/viber/voip/util/t;

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/ar;->a(Lcom/viber/voip/util/t;)Lcom/viber/voip/registration/CountryCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    const/4 v1, 0x6

    const-string/jumbo v2, "CountryCodeLoader"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 493
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/viber/voip/registration/q;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
