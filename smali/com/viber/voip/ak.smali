.class Lcom/viber/voip/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/HomeActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/viber/voip/ak;->a:Lcom/viber/voip/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1096
    const-string/jumbo v0, "mFireContactsShownRunnable run()"

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->a(Ljava/lang/String;)V

    .line 1097
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/viberout/promotion/a;->e:Lcom/viber/voip/viberout/promotion/a;

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/e;->a(Lcom/viber/voip/viberout/promotion/a;)V

    .line 1098
    return-void
.end method
