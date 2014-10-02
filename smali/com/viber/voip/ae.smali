.class Lcom/viber/voip/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/viber/voip/ae;->a:Lcom/viber/voip/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/viber/voip/ae;->a:Lcom/viber/voip/ac;

    iget-object v0, v0, Lcom/viber/voip/ac;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->b(Lcom/viber/voip/HomeActivity;)Lcom/viber/voip/widget/MessageBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/MessageBar;->a()V

    .line 297
    return-void
.end method
