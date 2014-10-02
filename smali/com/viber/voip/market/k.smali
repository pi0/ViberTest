.class Lcom/viber/voip/market/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/market/MarketActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/MarketActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/viber/voip/market/k;->b:Lcom/viber/voip/market/MarketActivity;

    iput-object p2, p0, Lcom/viber/voip/market/k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/viber/voip/market/k;->b:Lcom/viber/voip/market/MarketActivity;

    iget-object v1, p0, Lcom/viber/voip/market/k;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V

    .line 451
    return-void
.end method
