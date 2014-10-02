.class Lcom/viber/voip/viberout/ui/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/viberout/ui/aw;


# instance fields
.field final synthetic a:Lcom/viber/voip/viberout/ui/ViberOutDialogs;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;)V
    .locals 0
    .parameter

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/ap;->a:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ap;->a:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->finish()V

    .line 1066
    return-void
.end method
