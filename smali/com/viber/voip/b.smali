.class Lcom/viber/voip/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/a;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/viber/voip/b;->a:Lcom/viber/voip/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/viber/voip/b;->a:Lcom/viber/voip/a;

    iget-object v0, v0, Lcom/viber/voip/a;->a:Lcom/viber/voip/AboutActivity;

    invoke-static {v0}, Lcom/viber/voip/AboutActivity;->a(Lcom/viber/voip/AboutActivity;)V

    .line 136
    return-void
.end method
