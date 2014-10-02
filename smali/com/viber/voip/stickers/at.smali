.class Lcom/viber/voip/stickers/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/as;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/as;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/viber/voip/stickers/at;->a:Lcom/viber/voip/stickers/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/stickers/at;->a:Lcom/viber/voip/stickers/as;

    invoke-static {v0}, Lcom/viber/voip/stickers/as;->a(Lcom/viber/voip/stickers/as;)V

    .line 58
    return-void
.end method
