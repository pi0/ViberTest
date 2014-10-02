.class Lcom/viber/voip/contacts/ui/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/ag;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/ap;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/ax;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ax;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-static {v0, p1}, Lcom/viber/voip/contacts/ui/ap;->a(Lcom/viber/voip/contacts/ui/ap;Ljava/util/Map;)V

    .line 285
    return-void
.end method
