.class Lcom/viber/voip/backgrounds/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/backgrounds/o;

.field final synthetic b:Lcom/viber/voip/backgrounds/a/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/backgrounds/a/a;Lcom/viber/voip/backgrounds/o;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/viber/voip/backgrounds/a/b;->b:Lcom/viber/voip/backgrounds/a/a;

    iput-object p2, p0, Lcom/viber/voip/backgrounds/a/b;->a:Lcom/viber/voip/backgrounds/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a/b;->b:Lcom/viber/voip/backgrounds/a/a;

    iget-object v1, p0, Lcom/viber/voip/backgrounds/a/b;->a:Lcom/viber/voip/backgrounds/o;

    invoke-static {v0, v1}, Lcom/viber/voip/backgrounds/a/a;->a(Lcom/viber/voip/backgrounds/a/a;Lcom/viber/voip/backgrounds/o;)Lcom/viber/voip/backgrounds/o;

    .line 123
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a/b;->b:Lcom/viber/voip/backgrounds/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/a/a;->notifyDataSetChanged()V

    .line 124
    return-void
.end method
