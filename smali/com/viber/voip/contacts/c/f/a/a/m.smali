.class public Lcom/viber/voip/contacts/c/f/a/a/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/m;->b:Landroid/net/Uri;

    return-void
.end method
