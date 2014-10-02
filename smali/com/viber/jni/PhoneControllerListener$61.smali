.class Lcom/viber/jni/PhoneControllerListener$61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction",
        "<",
        "Lcom/viber/jni/PhoneControllerDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/PhoneControllerListener;

.field final synthetic val$addressBookEntries:[Lcom/viber/jni/CAddressBookEntry;

.field final synthetic val$clearAll:Z

.field final synthetic val$context:I

.field final synthetic val$genNum:I

.field final synthetic val$lastMsg:Z

.field final synthetic val$seq:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;IIZZI[Lcom/viber/jni/CAddressBookEntry;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$61;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput p2, p0, Lcom/viber/jni/PhoneControllerListener$61;->val$context:I

    iput p3, p0, Lcom/viber/jni/PhoneControllerListener$61;->val$genNum:I

    iput-boolean p4, p0, Lcom/viber/jni/PhoneControllerListener$61;->val$clearAll:Z

    iput-boolean p5, p0, Lcom/viber/jni/PhoneControllerListener$61;->val$lastMsg:Z

    iput p6, p0, Lcom/viber/jni/PhoneControllerListener$61;->val$seq:I

    iput-object p7, p0, Lcom/viber/jni/PhoneControllerListener$61;->val$addressBookEntries:[Lcom/viber/jni/CAddressBookEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 7
    .parameter

    .prologue
    .line 1295
    iget v1, p0, Lcom/viber/jni/PhoneControllerListener$61;->val$context:I

    iget v2, p0, Lcom/viber/jni/PhoneControllerListener$61;->val$genNum:I

    iget-boolean v3, p0, Lcom/viber/jni/PhoneControllerListener$61;->val$clearAll:Z

    iget-boolean v4, p0, Lcom/viber/jni/PhoneControllerListener$61;->val$lastMsg:Z

    iget v5, p0, Lcom/viber/jni/PhoneControllerListener$61;->val$seq:I

    iget-object v6, p0, Lcom/viber/jni/PhoneControllerListener$61;->val$addressBookEntries:[Lcom/viber/jni/CAddressBookEntry;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerDelegate;->onAddressBook(IIZZI[Lcom/viber/jni/CAddressBookEntry;)Z

    .line 1296
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1291
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$61;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method
