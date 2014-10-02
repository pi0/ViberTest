.class Lcom/viber/voip/contacts/c/f/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/f/b/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/b/h;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/m;->a:Lcom/viber/voip/contacts/c/f/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/m;->a:Lcom/viber/voip/contacts/c/f/b/h;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/h;->a(Lcom/viber/voip/contacts/c/f/b/h;)[Lcom/viber/jni/PhoneControllerDelegateAdapter;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 94
    invoke-virtual {v3}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onShareAddressBook()V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method
