// GENERATED AUTOMATICALLY FROM 'Assets/GameFiles/Input/GameInput.inputactions'

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.InputSystem;
using UnityEngine.InputSystem.Utilities;

namespace CustomInput
{
    public class @GameInput : IInputActionCollection, IDisposable
    {
        public InputActionAsset asset { get; }
        public @GameInput()
        {
            asset = InputActionAsset.FromJson(@"{
    ""name"": ""GameInput"",
    ""maps"": [
        {
            ""name"": ""Gameplay"",
            ""id"": ""3500bee6-fda5-4f80-80e5-66c2d1b1ff5f"",
            ""actions"": [
                {
                    ""name"": ""Movement"",
                    ""type"": ""Value"",
                    ""id"": ""287c250e-d3cb-4e4d-b676-e0cee62feb2a"",
                    ""expectedControlType"": ""Vector2"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""Look"",
                    ""type"": ""Value"",
                    ""id"": ""ccc353f3-319b-4cd2-882c-6c383bca10b3"",
                    ""expectedControlType"": ""Vector2"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""PrimaryInteract"",
                    ""type"": ""Button"",
                    ""id"": ""070eec60-f6cc-4d0c-b139-83d7c0ca7d3c"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": ""Press""
                },
                {
                    ""name"": ""SecondaryInteract"",
                    ""type"": ""Button"",
                    ""id"": ""66e6f199-4363-466d-90af-4994b02ec4a8"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""ToggleSpellWheel"",
                    ""type"": ""Button"",
                    ""id"": ""bd169729-dbb2-47ee-8cf1-29c066bd54af"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""Scroll"",
                    ""type"": ""Value"",
                    ""id"": ""d27943d4-e212-4c11-b366-d13b5542a3ba"",
                    ""expectedControlType"": ""Axis"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""OpenBook"",
                    ""type"": ""Button"",
                    ""id"": ""5e517114-48f6-41ec-bbcd-0929bfd54cfa"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""EscapeGameplay"",
                    ""type"": ""Button"",
                    ""id"": ""fec9c59b-0e06-4bbd-95eb-097a89b1ebee"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""SelectHotbarPage"",
                    ""type"": ""Value"",
                    ""id"": ""d0323479-cbc1-4894-b8db-60d3fc056b39"",
                    ""expectedControlType"": ""Axis"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""DeveloperSkipDay"",
                    ""type"": ""Button"",
                    ""id"": ""5cba14a9-d470-4b30-8feb-00edfe757ec5"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""Cancel"",
                    ""type"": ""Button"",
                    ""id"": ""dc4afb6a-c01a-4987-b041-37740629d54f"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""ScrollNumberKeys"",
                    ""type"": ""Button"",
                    ""id"": ""6e67e2ef-6dbf-4a54-a30f-42cb6e693187"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""SecondaryScroll"",
                    ""type"": ""Button"",
                    ""id"": ""522ba083-dc97-4c2e-851a-2c95e0557573"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""SecondaryScrollToggle"",
                    ""type"": ""Button"",
                    ""id"": ""5620d5d8-6d1b-4a13-b070-e2e52fad8b73"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                }
            ],
            ""bindings"": [
                {
                    ""name"": ""WASD"",
                    ""id"": ""382ab33b-b614-45cc-bb7c-91727d2bc85a"",
                    ""path"": ""2DVector"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Movement"",
                    ""isComposite"": true,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""up"",
                    ""id"": ""a1564057-ea9e-47b8-b456-ebd6c0ec5899"",
                    ""path"": ""<Keyboard>/w"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Movement"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""down"",
                    ""id"": ""8b1ecc4a-dc1f-4da9-a878-0773cde0482c"",
                    ""path"": ""<Keyboard>/s"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Movement"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""left"",
                    ""id"": ""64ff2ba2-3304-4502-b40a-4eb5a2d2c0e4"",
                    ""path"": ""<Keyboard>/a"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Movement"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""right"",
                    ""id"": ""de42980a-bae4-49c5-96e5-528e73ba90ff"",
                    ""path"": ""<Keyboard>/d"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Movement"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": """",
                    ""id"": ""5e3c8161-8850-4a95-946e-63595c8cf1f5"",
                    ""path"": ""<Gamepad>/leftStick"",
                    ""interactions"": """",
                    ""processors"": ""StickDeadzone"",
                    ""groups"": """",
                    ""action"": ""Movement"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""9b4c73e9-6992-4421-b1b4-1f58f36ddb57"",
                    ""path"": ""<Mouse>/leftButton"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""PrimaryInteract"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""f1416898-68e7-41fa-b03a-e24bf8652202"",
                    ""path"": ""<Gamepad>/buttonSouth"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""PrimaryInteract"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""3b2b1e3e-2de5-470c-898f-5fd808b32bb3"",
                    ""path"": ""<Gamepad>/rightTrigger"",
                    ""interactions"": ""Press"",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""PrimaryInteract"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""9303d169-4599-4ccf-9711-f0be0b22d794"",
                    ""path"": ""<Keyboard>/enter"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""PrimaryInteract"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""b2652738-bf3f-4314-bb79-f0fe92d05384"",
                    ""path"": ""<Mouse>/rightButton"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""SecondaryInteract"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""1ebc2880-2eeb-4aeb-987f-6f2b2960e46c"",
                    ""path"": ""<Gamepad>/buttonWest"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""SecondaryInteract"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""794e8278-dc2d-487c-9878-4df4581edf30"",
                    ""path"": ""<Keyboard>/shift"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""ToggleSpellWheel"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""d25f7ad4-194d-46bf-b4f3-dd9d92ee0f81"",
                    ""path"": ""<Gamepad>/leftTrigger"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""ToggleSpellWheel"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""ed634755-003f-49b0-b4d7-62c4bcf297dd"",
                    ""path"": ""<Mouse>/delta"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Look"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""ea0dba2c-7ca9-4b2d-96a4-3e7d9662ff55"",
                    ""path"": ""<Gamepad>/rightStick"",
                    ""interactions"": """",
                    ""processors"": ""StickDeadzone,ScaleVector2(x=2,y=2)"",
                    ""groups"": """",
                    ""action"": ""Look"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""24bcdae8-0eeb-42aa-9c28-59c9072ee0be"",
                    ""path"": ""<Keyboard>/escape"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""EscapeGameplay"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""bbabfad6-e3ea-4078-aceb-d5b9e223a24d"",
                    ""path"": ""<Gamepad>/start"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""EscapeGameplay"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""ca6ac509-f465-4fcf-b757-f938938ab0cd"",
                    ""path"": ""<Keyboard>/space"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""OpenBook"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""770de675-13d7-4f10-82e7-1812147c583c"",
                    ""path"": ""<Keyboard>/tab"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""OpenBook"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""3ade3cc3-123d-41f6-9df4-892bcdeff352"",
                    ""path"": ""<Gamepad>/buttonNorth"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""OpenBook"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""76897a53-a6cb-4132-a8d8-896e114c0fb6"",
                    ""path"": ""<DualShockGamepad>/touchpadButton"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""OpenBook"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""b9f65562-0599-4660-9724-2c97a28008b9"",
                    ""path"": ""<Gamepad>/select"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""OpenBook"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""QE"",
                    ""id"": ""c2c8f28b-6b70-42b6-9808-ad8aacc99b4e"",
                    ""path"": ""1DAxis"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""SelectHotbarPage"",
                    ""isComposite"": true,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""negative"",
                    ""id"": ""57583406-6edf-4eaf-9a3e-8057ae28869c"",
                    ""path"": ""<Keyboard>/q"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""SelectHotbarPage"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""positive"",
                    ""id"": ""3efe72dc-03d9-4044-8a85-e74403643231"",
                    ""path"": ""<Keyboard>/e"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""SelectHotbarPage"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": """",
                    ""id"": ""7544115e-63b0-478f-b718-4f883157a479"",
                    ""path"": ""<Mouse>/scroll/y"",
                    ""interactions"": """",
                    ""processors"": ""Scale(factor=0.5)"",
                    ""groups"": """",
                    ""action"": ""Scroll"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""LeftRight Bumper [Gamepad]"",
                    ""id"": ""e464dd48-d770-46c4-9afc-484c0611292c"",
                    ""path"": ""1DAxis"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Scroll"",
                    ""isComposite"": true,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""positive"",
                    ""id"": ""5e707ecd-4be8-4d37-bc5f-7eee55d0b260"",
                    ""path"": ""<Gamepad>/leftShoulder"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Scroll"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""negative"",
                    ""id"": ""7ccdfd13-1ccb-49ed-8d2c-7f05e9abd0cb"",
                    ""path"": ""<Gamepad>/rightShoulder"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Scroll"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": """",
                    ""id"": ""7aabf77a-523d-48d7-9be5-233fd3027901"",
                    ""path"": ""<Keyboard>/0"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""DeveloperSkipDay"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""eeb4dc81-717f-4f17-8764-b1e5566a63ee"",
                    ""path"": ""<Keyboard>/backquote"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Cancel"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""cf18ae1f-82b5-4a96-b343-e50efecddd4c"",
                    ""path"": ""<Gamepad>/buttonEast"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Cancel"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""7e4c319c-6c65-4805-bc6e-54ccf9ce5478"",
                    ""path"": ""<Keyboard>/1"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""ScrollNumberKeys"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""db2e203c-f065-42c7-9f21-6e7b01472c9c"",
                    ""path"": ""<Keyboard>/2"",
                    ""interactions"": """",
                    ""processors"": ""Scale(factor=2)"",
                    ""groups"": """",
                    ""action"": ""ScrollNumberKeys"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""728745af-2f25-41f3-86f1-b12dbbf41938"",
                    ""path"": ""<Keyboard>/3"",
                    ""interactions"": """",
                    ""processors"": ""Scale(factor=3)"",
                    ""groups"": """",
                    ""action"": ""ScrollNumberKeys"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""404fe1a4-9fee-4705-8492-76ddc45254ee"",
                    ""path"": ""<Keyboard>/4"",
                    ""interactions"": """",
                    ""processors"": ""Scale(factor=4)"",
                    ""groups"": """",
                    ""action"": ""ScrollNumberKeys"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""a8b3c461-9232-46a9-9e47-1d36d15e2b71"",
                    ""path"": ""<Keyboard>/5"",
                    ""interactions"": """",
                    ""processors"": ""Scale(factor=5)"",
                    ""groups"": """",
                    ""action"": ""ScrollNumberKeys"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""5ec39098-5b7e-4dcc-9dab-d76060c45647"",
                    ""path"": ""<Keyboard>/6"",
                    ""interactions"": """",
                    ""processors"": ""Scale(factor=6)"",
                    ""groups"": """",
                    ""action"": ""ScrollNumberKeys"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""1582d6ad-05e0-4e90-88c9-aa7c15a1f4c8"",
                    ""path"": ""<Keyboard>/7"",
                    ""interactions"": """",
                    ""processors"": ""Scale(factor=7)"",
                    ""groups"": """",
                    ""action"": ""ScrollNumberKeys"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""c8b0a4bd-5831-4faf-9a06-beaa75a2338c"",
                    ""path"": ""<Keyboard>/8"",
                    ""interactions"": """",
                    ""processors"": ""Scale(factor=8)"",
                    ""groups"": """",
                    ""action"": ""ScrollNumberKeys"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""Arrow Keys"",
                    ""id"": ""fb0ae6c4-10a2-4675-9524-a9305fcf90bc"",
                    ""path"": ""1DAxis"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""SecondaryScroll"",
                    ""isComposite"": true,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""negative"",
                    ""id"": ""836ace23-70c6-4f12-bc4e-de73feb3c0bf"",
                    ""path"": ""<Keyboard>/leftArrow"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""SecondaryScroll"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""positive"",
                    ""id"": ""b810fb6d-f21c-42c0-bad1-d30c3ce77f07"",
                    ""path"": ""<Keyboard>/rightArrow"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""SecondaryScroll"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""D-Pad"",
                    ""id"": ""e5849a80-022f-40ad-bb38-d2c1d4c91f18"",
                    ""path"": ""1DAxis"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""SecondaryScroll"",
                    ""isComposite"": true,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""negative"",
                    ""id"": ""d391a294-2fea-422e-8e0d-48bad80770bb"",
                    ""path"": ""<Gamepad>/dpad/left"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""SecondaryScroll"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""positive"",
                    ""id"": ""4e8deb00-f69d-48c9-81ed-c579fe91aaaf"",
                    ""path"": ""<Gamepad>/dpad/right"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""SecondaryScroll"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""Arrow Keys"",
                    ""id"": ""545d99f7-7ac2-4704-bf40-f307eb987ec4"",
                    ""path"": ""1DAxis"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""SecondaryScrollToggle"",
                    ""isComposite"": true,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""negative"",
                    ""id"": ""2ac65758-a24b-42de-9512-0191df68bcc1"",
                    ""path"": ""<Keyboard>/downArrow"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""SecondaryScrollToggle"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""positive"",
                    ""id"": ""84951ccd-766f-4300-bc9e-6de35b68e65f"",
                    ""path"": ""<Keyboard>/upArrow"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""SecondaryScrollToggle"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""D-Pad"",
                    ""id"": ""3aa2346f-ad0b-4a0c-b93c-d1d154a17024"",
                    ""path"": ""1DAxis"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""SecondaryScrollToggle"",
                    ""isComposite"": true,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""negative"",
                    ""id"": ""7838d682-e5d8-40cd-9fa2-a54090908d03"",
                    ""path"": ""<Gamepad>/dpad/down"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""SecondaryScrollToggle"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""positive"",
                    ""id"": ""cabf418b-62ee-4a28-8402-28bd6f9ee856"",
                    ""path"": ""<Gamepad>/dpad/up"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""SecondaryScrollToggle"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                }
            ]
        },
        {
            ""name"": ""Menus"",
            ""id"": ""79d6d269-a8bd-426d-a836-c971dc2adf5c"",
            ""actions"": [
                {
                    ""name"": ""CloseBook"",
                    ""type"": ""Button"",
                    ""id"": ""e16811ff-fa21-4c5e-84ed-5bb44f82aab7"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""EscapeMenu"",
                    ""type"": ""Button"",
                    ""id"": ""78c9eec2-2981-4802-a087-884ace14ee9f"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""Navigate"",
                    ""type"": ""Value"",
                    ""id"": ""71404d73-3f48-4a27-97fe-7667d9581e7b"",
                    ""expectedControlType"": ""Vector2"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""ChangePage"",
                    ""type"": ""Value"",
                    ""id"": ""ff81a2f4-d0b1-4424-971d-e0d08b50ae86"",
                    ""expectedControlType"": ""Axis"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""Select"",
                    ""type"": ""Button"",
                    ""id"": ""dd2d6e41-4854-4c5f-96af-99558338da1e"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""Confirm"",
                    ""type"": ""Button"",
                    ""id"": ""2b44e0a3-a293-40ca-b15a-67a2e2a4054a"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""Cancel"",
                    ""type"": ""Button"",
                    ""id"": ""fc654aa4-f4bb-4013-a4cc-1664c6121ab0"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""Clear"",
                    ""type"": ""Button"",
                    ""id"": ""5de1a884-dcc3-4cf3-b034-2a0d907fc523"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""ChangePageSecondary"",
                    ""type"": ""Value"",
                    ""id"": ""7c735459-1947-4984-b082-d0f534ca08ff"",
                    ""expectedControlType"": ""Axis"",
                    ""processors"": """",
                    ""interactions"": """"
                }
            ],
            ""bindings"": [
                {
                    ""name"": """",
                    ""id"": ""47493dd1-ba47-45c2-8bab-12b3c9c18800"",
                    ""path"": ""<Keyboard>/escape"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""EscapeMenu"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""acde32fe-45cd-462c-8024-97c71571b7fb"",
                    ""path"": ""<Gamepad>/start"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""EscapeMenu"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""652f7320-b474-4e0c-abdf-31f39c801faa"",
                    ""path"": ""<Keyboard>/space"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""CloseBook"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""b5999fca-abd2-44a5-8d03-fea1cbd29294"",
                    ""path"": ""<Gamepad>/buttonEast"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""CloseBook"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""f11bb99f-8d8c-43ff-b971-0b411a60ad04"",
                    ""path"": ""<Keyboard>/tab"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""CloseBook"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""19541bec-4c61-43c1-a631-a6ea24b10ad5"",
                    ""path"": ""<DualShockGamepad>/touchpadButton"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""CloseBook"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""WASD"",
                    ""id"": ""962a3310-b929-4a46-9358-960b05214ddb"",
                    ""path"": ""2DVector"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Navigate"",
                    ""isComposite"": true,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""down"",
                    ""id"": ""b484da00-634a-49c6-bb64-aea9999dbc15"",
                    ""path"": ""<Keyboard>/w"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Navigate"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""up"",
                    ""id"": ""cdc8e124-ba80-448c-b6e7-6f334374d2fa"",
                    ""path"": ""<Keyboard>/s"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Navigate"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""left"",
                    ""id"": ""7e2b20c8-0239-4967-a6fd-fa74ce8f6521"",
                    ""path"": ""<Keyboard>/a"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Navigate"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""right"",
                    ""id"": ""a40c9f8d-2e0d-42da-b864-35c1823edb6a"",
                    ""path"": ""<Keyboard>/d"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Navigate"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""Arrows"",
                    ""id"": ""bf066ac5-24a0-489e-a31c-35a7e6e94bc0"",
                    ""path"": ""2DVector"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Navigate"",
                    ""isComposite"": true,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""down"",
                    ""id"": ""21949665-cdad-4fd0-8576-72e8fef4314f"",
                    ""path"": ""<Keyboard>/upArrow"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Navigate"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""up"",
                    ""id"": ""eaf4eefb-0e4c-48cc-9174-2d84acbb60f9"",
                    ""path"": ""<Keyboard>/downArrow"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Navigate"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""left"",
                    ""id"": ""2b894e00-6126-4cdc-b83d-a7caa620923c"",
                    ""path"": ""<Keyboard>/leftArrow"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Navigate"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""right"",
                    ""id"": ""ed2575fe-ad23-433b-9510-9b60e7272365"",
                    ""path"": ""<Keyboard>/rightArrow"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Navigate"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""Left Joystick [Gamepad]"",
                    ""id"": ""ae7894f2-9668-420a-a1bc-4000bd31f8b8"",
                    ""path"": ""2DVector"",
                    ""interactions"": ""Press"",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Navigate"",
                    ""isComposite"": true,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""down"",
                    ""id"": ""433ee06f-09c9-4d09-a73f-181a84125feb"",
                    ""path"": ""<Gamepad>/leftStick/up"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Navigate"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""up"",
                    ""id"": ""49ae30e9-500b-4a6f-979e-37fbc213e5c3"",
                    ""path"": ""<Gamepad>/leftStick/down"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Navigate"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""left"",
                    ""id"": ""f08ff4e6-2202-4c33-bb20-7cc295b6c876"",
                    ""path"": ""<Gamepad>/leftStick/left"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Navigate"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""right"",
                    ""id"": ""40c33466-9023-4d43-b1f8-1521fdcc6521"",
                    ""path"": ""<Gamepad>/leftStick/right"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Navigate"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""QE"",
                    ""id"": ""084082c3-6808-470b-99ae-91c404100ba1"",
                    ""path"": ""1DAxis"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""ChangePage"",
                    ""isComposite"": true,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""negative"",
                    ""id"": ""2e5e0ba8-2936-435b-b04a-e2abd2bbf7ab"",
                    ""path"": ""<Keyboard>/q"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""ChangePage"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""positive"",
                    ""id"": ""2995ea9d-9679-46a8-8471-3d5d5477ba54"",
                    ""path"": ""<Keyboard>/e"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""ChangePage"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""LeftRight Bumper [Gamepad]"",
                    ""id"": ""9250bf40-d3a1-45f6-b49e-53e802403553"",
                    ""path"": ""1DAxis"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""ChangePage"",
                    ""isComposite"": true,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""negative"",
                    ""id"": ""101a2105-e8fb-49fa-be66-40e746ef012b"",
                    ""path"": ""<Gamepad>/leftShoulder"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""ChangePage"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""positive"",
                    ""id"": ""26069fc9-d101-42b2-9bf1-fc4576147b75"",
                    ""path"": ""<Gamepad>/rightShoulder"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""ChangePage"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": """",
                    ""id"": ""85b510d0-ab3e-439d-910f-585c9d189c05"",
                    ""path"": ""<Keyboard>/enter"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Select"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""88dc07fe-084d-4869-b167-9df0c5654494"",
                    ""path"": ""<Gamepad>/buttonSouth"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Select"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""11aed7dd-f6a3-445a-a8d0-6d41bbe712fb"",
                    ""path"": ""<Keyboard>/shift"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Confirm"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""bb026e64-d9e7-4b02-beef-864e1a1101b3"",
                    ""path"": ""<Gamepad>/buttonWest"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Confirm"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""bc76f9db-8755-45ec-ab11-0a27f7b85691"",
                    ""path"": ""<Keyboard>/backquote"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Cancel"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""9602c2ab-8ad0-4ddd-8731-57637efe280b"",
                    ""path"": ""<Gamepad>/buttonEast"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Cancel"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""e270b027-f385-4fa2-ada3-5c1c79152882"",
                    ""path"": ""<Gamepad>/buttonNorth"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Clear"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""3abdb8af-adb5-4fc8-8050-2d87769350d0"",
                    ""path"": ""<Keyboard>/c"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Clear"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""LeftRight Trigger"",
                    ""id"": ""71954f88-5806-4052-80e9-bfc9ebc5b673"",
                    ""path"": ""1DAxis"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""ChangePageSecondary"",
                    ""isComposite"": true,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""Negative"",
                    ""id"": ""795c1e61-e205-4013-bd2f-ddc86bbb46f4"",
                    ""path"": ""<Gamepad>/leftTrigger"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""ChangePageSecondary"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""Positive"",
                    ""id"": ""58e03a71-0cdc-4f10-9a7a-e9a6b61b3695"",
                    ""path"": ""<Gamepad>/rightTrigger"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""ChangePageSecondary"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""ZC"",
                    ""id"": ""21c98555-a3bc-4cf9-a199-12290957a408"",
                    ""path"": ""1DAxis"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""ChangePageSecondary"",
                    ""isComposite"": true,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""negative"",
                    ""id"": ""cd040bfb-5865-443b-8714-943d95df1ba8"",
                    ""path"": ""<Keyboard>/z"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""ChangePageSecondary"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""positive"",
                    ""id"": ""2d08f006-ef23-4c32-97b1-de5e07ee624f"",
                    ""path"": ""<Keyboard>/c"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""ChangePageSecondary"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                }
            ]
        },
        {
            ""name"": ""Popup"",
            ""id"": ""435a40ea-d1c8-4e09-bd44-6a5f449a86d2"",
            ""actions"": [
                {
                    ""name"": ""PopupConfirm"",
                    ""type"": ""Button"",
                    ""id"": ""93ba10ee-ed9e-48c0-be5f-e09378c51631"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""PopupDeny"",
                    ""type"": ""Button"",
                    ""id"": ""3ebcfc7f-0dda-4582-982e-d843991243a0"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                }
            ],
            ""bindings"": [
                {
                    ""name"": """",
                    ""id"": ""906857a2-e51b-45ae-a04d-6a47fb1c92da"",
                    ""path"": ""<Gamepad>/buttonSouth"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""PopupConfirm"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""326bf7b4-0304-4980-968b-f103a64a538d"",
                    ""path"": ""<Keyboard>/enter"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""PopupConfirm"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""3abeeb8d-956d-451a-9767-96b04bf1261b"",
                    ""path"": ""<Gamepad>/buttonEast"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""PopupDeny"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""f967345d-2f2b-4f6b-a281-6f185a142db0"",
                    ""path"": ""<Keyboard>/escape"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""PopupDeny"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                }
            ]
        }
    ],
    ""controlSchemes"": []
}");
            // Gameplay
            m_Gameplay = asset.FindActionMap("Gameplay", throwIfNotFound: true);
            m_Gameplay_Movement = m_Gameplay.FindAction("Movement", throwIfNotFound: true);
            m_Gameplay_Look = m_Gameplay.FindAction("Look", throwIfNotFound: true);
            m_Gameplay_PrimaryInteract = m_Gameplay.FindAction("PrimaryInteract", throwIfNotFound: true);
            m_Gameplay_SecondaryInteract = m_Gameplay.FindAction("SecondaryInteract", throwIfNotFound: true);
            m_Gameplay_ToggleSpellWheel = m_Gameplay.FindAction("ToggleSpellWheel", throwIfNotFound: true);
            m_Gameplay_Scroll = m_Gameplay.FindAction("Scroll", throwIfNotFound: true);
            m_Gameplay_OpenBook = m_Gameplay.FindAction("OpenBook", throwIfNotFound: true);
            m_Gameplay_EscapeGameplay = m_Gameplay.FindAction("EscapeGameplay", throwIfNotFound: true);
            m_Gameplay_SelectHotbarPage = m_Gameplay.FindAction("SelectHotbarPage", throwIfNotFound: true);
            m_Gameplay_DeveloperSkipDay = m_Gameplay.FindAction("DeveloperSkipDay", throwIfNotFound: true);
            m_Gameplay_Cancel = m_Gameplay.FindAction("Cancel", throwIfNotFound: true);
            m_Gameplay_ScrollNumberKeys = m_Gameplay.FindAction("ScrollNumberKeys", throwIfNotFound: true);
            m_Gameplay_SecondaryScroll = m_Gameplay.FindAction("SecondaryScroll", throwIfNotFound: true);
            m_Gameplay_SecondaryScrollToggle = m_Gameplay.FindAction("SecondaryScrollToggle", throwIfNotFound: true);
            // Menus
            m_Menus = asset.FindActionMap("Menus", throwIfNotFound: true);
            m_Menus_CloseBook = m_Menus.FindAction("CloseBook", throwIfNotFound: true);
            m_Menus_EscapeMenu = m_Menus.FindAction("EscapeMenu", throwIfNotFound: true);
            m_Menus_Navigate = m_Menus.FindAction("Navigate", throwIfNotFound: true);
            m_Menus_ChangePage = m_Menus.FindAction("ChangePage", throwIfNotFound: true);
            m_Menus_Select = m_Menus.FindAction("Select", throwIfNotFound: true);
            m_Menus_Confirm = m_Menus.FindAction("Confirm", throwIfNotFound: true);
            m_Menus_Cancel = m_Menus.FindAction("Cancel", throwIfNotFound: true);
            m_Menus_Clear = m_Menus.FindAction("Clear", throwIfNotFound: true);
            m_Menus_ChangePageSecondary = m_Menus.FindAction("ChangePageSecondary", throwIfNotFound: true);
            // Popup
            m_Popup = asset.FindActionMap("Popup", throwIfNotFound: true);
            m_Popup_PopupConfirm = m_Popup.FindAction("PopupConfirm", throwIfNotFound: true);
            m_Popup_PopupDeny = m_Popup.FindAction("PopupDeny", throwIfNotFound: true);
        }

        public void Dispose()
        {
            UnityEngine.Object.Destroy(asset);
        }

        public InputBinding? bindingMask
        {
            get => asset.bindingMask;
            set => asset.bindingMask = value;
        }

        public ReadOnlyArray<InputDevice>? devices
        {
            get => asset.devices;
            set => asset.devices = value;
        }

        public ReadOnlyArray<InputControlScheme> controlSchemes => asset.controlSchemes;

        public bool Contains(InputAction action)
        {
            return asset.Contains(action);
        }

        public IEnumerator<InputAction> GetEnumerator()
        {
            return asset.GetEnumerator();
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return GetEnumerator();
        }

        public void Enable()
        {
            asset.Enable();
        }

        public void Disable()
        {
            asset.Disable();
        }

        // Gameplay
        private readonly InputActionMap m_Gameplay;
        private IGameplayActions m_GameplayActionsCallbackInterface;
        private readonly InputAction m_Gameplay_Movement;
        private readonly InputAction m_Gameplay_Look;
        private readonly InputAction m_Gameplay_PrimaryInteract;
        private readonly InputAction m_Gameplay_SecondaryInteract;
        private readonly InputAction m_Gameplay_ToggleSpellWheel;
        private readonly InputAction m_Gameplay_Scroll;
        private readonly InputAction m_Gameplay_OpenBook;
        private readonly InputAction m_Gameplay_EscapeGameplay;
        private readonly InputAction m_Gameplay_SelectHotbarPage;
        private readonly InputAction m_Gameplay_DeveloperSkipDay;
        private readonly InputAction m_Gameplay_Cancel;
        private readonly InputAction m_Gameplay_ScrollNumberKeys;
        private readonly InputAction m_Gameplay_SecondaryScroll;
        private readonly InputAction m_Gameplay_SecondaryScrollToggle;
        public struct GameplayActions
        {
            private @GameInput m_Wrapper;
            public GameplayActions(@GameInput wrapper) { m_Wrapper = wrapper; }
            public InputAction @Movement => m_Wrapper.m_Gameplay_Movement;
            public InputAction @Look => m_Wrapper.m_Gameplay_Look;
            public InputAction @PrimaryInteract => m_Wrapper.m_Gameplay_PrimaryInteract;
            public InputAction @SecondaryInteract => m_Wrapper.m_Gameplay_SecondaryInteract;
            public InputAction @ToggleSpellWheel => m_Wrapper.m_Gameplay_ToggleSpellWheel;
            public InputAction @Scroll => m_Wrapper.m_Gameplay_Scroll;
            public InputAction @OpenBook => m_Wrapper.m_Gameplay_OpenBook;
            public InputAction @EscapeGameplay => m_Wrapper.m_Gameplay_EscapeGameplay;
            public InputAction @SelectHotbarPage => m_Wrapper.m_Gameplay_SelectHotbarPage;
            public InputAction @DeveloperSkipDay => m_Wrapper.m_Gameplay_DeveloperSkipDay;
            public InputAction @Cancel => m_Wrapper.m_Gameplay_Cancel;
            public InputAction @ScrollNumberKeys => m_Wrapper.m_Gameplay_ScrollNumberKeys;
            public InputAction @SecondaryScroll => m_Wrapper.m_Gameplay_SecondaryScroll;
            public InputAction @SecondaryScrollToggle => m_Wrapper.m_Gameplay_SecondaryScrollToggle;
            public InputActionMap Get() { return m_Wrapper.m_Gameplay; }
            public void Enable() { Get().Enable(); }
            public void Disable() { Get().Disable(); }
            public bool enabled => Get().enabled;
            public static implicit operator InputActionMap(GameplayActions set) { return set.Get(); }
            public void SetCallbacks(IGameplayActions instance)
            {
                if (m_Wrapper.m_GameplayActionsCallbackInterface != null)
                {
                    @Movement.started -= m_Wrapper.m_GameplayActionsCallbackInterface.OnMovement;
                    @Movement.performed -= m_Wrapper.m_GameplayActionsCallbackInterface.OnMovement;
                    @Movement.canceled -= m_Wrapper.m_GameplayActionsCallbackInterface.OnMovement;
                    @Look.started -= m_Wrapper.m_GameplayActionsCallbackInterface.OnLook;
                    @Look.performed -= m_Wrapper.m_GameplayActionsCallbackInterface.OnLook;
                    @Look.canceled -= m_Wrapper.m_GameplayActionsCallbackInterface.OnLook;
                    @PrimaryInteract.started -= m_Wrapper.m_GameplayActionsCallbackInterface.OnPrimaryInteract;
                    @PrimaryInteract.performed -= m_Wrapper.m_GameplayActionsCallbackInterface.OnPrimaryInteract;
                    @PrimaryInteract.canceled -= m_Wrapper.m_GameplayActionsCallbackInterface.OnPrimaryInteract;
                    @SecondaryInteract.started -= m_Wrapper.m_GameplayActionsCallbackInterface.OnSecondaryInteract;
                    @SecondaryInteract.performed -= m_Wrapper.m_GameplayActionsCallbackInterface.OnSecondaryInteract;
                    @SecondaryInteract.canceled -= m_Wrapper.m_GameplayActionsCallbackInterface.OnSecondaryInteract;
                    @ToggleSpellWheel.started -= m_Wrapper.m_GameplayActionsCallbackInterface.OnToggleSpellWheel;
                    @ToggleSpellWheel.performed -= m_Wrapper.m_GameplayActionsCallbackInterface.OnToggleSpellWheel;
                    @ToggleSpellWheel.canceled -= m_Wrapper.m_GameplayActionsCallbackInterface.OnToggleSpellWheel;
                    @Scroll.started -= m_Wrapper.m_GameplayActionsCallbackInterface.OnScroll;
                    @Scroll.performed -= m_Wrapper.m_GameplayActionsCallbackInterface.OnScroll;
                    @Scroll.canceled -= m_Wrapper.m_GameplayActionsCallbackInterface.OnScroll;
                    @OpenBook.started -= m_Wrapper.m_GameplayActionsCallbackInterface.OnOpenBook;
                    @OpenBook.performed -= m_Wrapper.m_GameplayActionsCallbackInterface.OnOpenBook;
                    @OpenBook.canceled -= m_Wrapper.m_GameplayActionsCallbackInterface.OnOpenBook;
                    @EscapeGameplay.started -= m_Wrapper.m_GameplayActionsCallbackInterface.OnEscapeGameplay;
                    @EscapeGameplay.performed -= m_Wrapper.m_GameplayActionsCallbackInterface.OnEscapeGameplay;
                    @EscapeGameplay.canceled -= m_Wrapper.m_GameplayActionsCallbackInterface.OnEscapeGameplay;
                    @SelectHotbarPage.started -= m_Wrapper.m_GameplayActionsCallbackInterface.OnSelectHotbarPage;
                    @SelectHotbarPage.performed -= m_Wrapper.m_GameplayActionsCallbackInterface.OnSelectHotbarPage;
                    @SelectHotbarPage.canceled -= m_Wrapper.m_GameplayActionsCallbackInterface.OnSelectHotbarPage;
                    @DeveloperSkipDay.started -= m_Wrapper.m_GameplayActionsCallbackInterface.OnDeveloperSkipDay;
                    @DeveloperSkipDay.performed -= m_Wrapper.m_GameplayActionsCallbackInterface.OnDeveloperSkipDay;
                    @DeveloperSkipDay.canceled -= m_Wrapper.m_GameplayActionsCallbackInterface.OnDeveloperSkipDay;
                    @Cancel.started -= m_Wrapper.m_GameplayActionsCallbackInterface.OnCancel;
                    @Cancel.performed -= m_Wrapper.m_GameplayActionsCallbackInterface.OnCancel;
                    @Cancel.canceled -= m_Wrapper.m_GameplayActionsCallbackInterface.OnCancel;
                    @ScrollNumberKeys.started -= m_Wrapper.m_GameplayActionsCallbackInterface.OnScrollNumberKeys;
                    @ScrollNumberKeys.performed -= m_Wrapper.m_GameplayActionsCallbackInterface.OnScrollNumberKeys;
                    @ScrollNumberKeys.canceled -= m_Wrapper.m_GameplayActionsCallbackInterface.OnScrollNumberKeys;
                    @SecondaryScroll.started -= m_Wrapper.m_GameplayActionsCallbackInterface.OnSecondaryScroll;
                    @SecondaryScroll.performed -= m_Wrapper.m_GameplayActionsCallbackInterface.OnSecondaryScroll;
                    @SecondaryScroll.canceled -= m_Wrapper.m_GameplayActionsCallbackInterface.OnSecondaryScroll;
                    @SecondaryScrollToggle.started -= m_Wrapper.m_GameplayActionsCallbackInterface.OnSecondaryScrollToggle;
                    @SecondaryScrollToggle.performed -= m_Wrapper.m_GameplayActionsCallbackInterface.OnSecondaryScrollToggle;
                    @SecondaryScrollToggle.canceled -= m_Wrapper.m_GameplayActionsCallbackInterface.OnSecondaryScrollToggle;
                }
                m_Wrapper.m_GameplayActionsCallbackInterface = instance;
                if (instance != null)
                {
                    @Movement.started += instance.OnMovement;
                    @Movement.performed += instance.OnMovement;
                    @Movement.canceled += instance.OnMovement;
                    @Look.started += instance.OnLook;
                    @Look.performed += instance.OnLook;
                    @Look.canceled += instance.OnLook;
                    @PrimaryInteract.started += instance.OnPrimaryInteract;
                    @PrimaryInteract.performed += instance.OnPrimaryInteract;
                    @PrimaryInteract.canceled += instance.OnPrimaryInteract;
                    @SecondaryInteract.started += instance.OnSecondaryInteract;
                    @SecondaryInteract.performed += instance.OnSecondaryInteract;
                    @SecondaryInteract.canceled += instance.OnSecondaryInteract;
                    @ToggleSpellWheel.started += instance.OnToggleSpellWheel;
                    @ToggleSpellWheel.performed += instance.OnToggleSpellWheel;
                    @ToggleSpellWheel.canceled += instance.OnToggleSpellWheel;
                    @Scroll.started += instance.OnScroll;
                    @Scroll.performed += instance.OnScroll;
                    @Scroll.canceled += instance.OnScroll;
                    @OpenBook.started += instance.OnOpenBook;
                    @OpenBook.performed += instance.OnOpenBook;
                    @OpenBook.canceled += instance.OnOpenBook;
                    @EscapeGameplay.started += instance.OnEscapeGameplay;
                    @EscapeGameplay.performed += instance.OnEscapeGameplay;
                    @EscapeGameplay.canceled += instance.OnEscapeGameplay;
                    @SelectHotbarPage.started += instance.OnSelectHotbarPage;
                    @SelectHotbarPage.performed += instance.OnSelectHotbarPage;
                    @SelectHotbarPage.canceled += instance.OnSelectHotbarPage;
                    @DeveloperSkipDay.started += instance.OnDeveloperSkipDay;
                    @DeveloperSkipDay.performed += instance.OnDeveloperSkipDay;
                    @DeveloperSkipDay.canceled += instance.OnDeveloperSkipDay;
                    @Cancel.started += instance.OnCancel;
                    @Cancel.performed += instance.OnCancel;
                    @Cancel.canceled += instance.OnCancel;
                    @ScrollNumberKeys.started += instance.OnScrollNumberKeys;
                    @ScrollNumberKeys.performed += instance.OnScrollNumberKeys;
                    @ScrollNumberKeys.canceled += instance.OnScrollNumberKeys;
                    @SecondaryScroll.started += instance.OnSecondaryScroll;
                    @SecondaryScroll.performed += instance.OnSecondaryScroll;
                    @SecondaryScroll.canceled += instance.OnSecondaryScroll;
                    @SecondaryScrollToggle.started += instance.OnSecondaryScrollToggle;
                    @SecondaryScrollToggle.performed += instance.OnSecondaryScrollToggle;
                    @SecondaryScrollToggle.canceled += instance.OnSecondaryScrollToggle;
                }
            }
        }
        public GameplayActions @Gameplay => new GameplayActions(this);

        // Menus
        private readonly InputActionMap m_Menus;
        private IMenusActions m_MenusActionsCallbackInterface;
        private readonly InputAction m_Menus_CloseBook;
        private readonly InputAction m_Menus_EscapeMenu;
        private readonly InputAction m_Menus_Navigate;
        private readonly InputAction m_Menus_ChangePage;
        private readonly InputAction m_Menus_Select;
        private readonly InputAction m_Menus_Confirm;
        private readonly InputAction m_Menus_Cancel;
        private readonly InputAction m_Menus_Clear;
        private readonly InputAction m_Menus_ChangePageSecondary;
        public struct MenusActions
        {
            private @GameInput m_Wrapper;
            public MenusActions(@GameInput wrapper) { m_Wrapper = wrapper; }
            public InputAction @CloseBook => m_Wrapper.m_Menus_CloseBook;
            public InputAction @EscapeMenu => m_Wrapper.m_Menus_EscapeMenu;
            public InputAction @Navigate => m_Wrapper.m_Menus_Navigate;
            public InputAction @ChangePage => m_Wrapper.m_Menus_ChangePage;
            public InputAction @Select => m_Wrapper.m_Menus_Select;
            public InputAction @Confirm => m_Wrapper.m_Menus_Confirm;
            public InputAction @Cancel => m_Wrapper.m_Menus_Cancel;
            public InputAction @Clear => m_Wrapper.m_Menus_Clear;
            public InputAction @ChangePageSecondary => m_Wrapper.m_Menus_ChangePageSecondary;
            public InputActionMap Get() { return m_Wrapper.m_Menus; }
            public void Enable() { Get().Enable(); }
            public void Disable() { Get().Disable(); }
            public bool enabled => Get().enabled;
            public static implicit operator InputActionMap(MenusActions set) { return set.Get(); }
            public void SetCallbacks(IMenusActions instance)
            {
                if (m_Wrapper.m_MenusActionsCallbackInterface != null)
                {
                    @CloseBook.started -= m_Wrapper.m_MenusActionsCallbackInterface.OnCloseBook;
                    @CloseBook.performed -= m_Wrapper.m_MenusActionsCallbackInterface.OnCloseBook;
                    @CloseBook.canceled -= m_Wrapper.m_MenusActionsCallbackInterface.OnCloseBook;
                    @EscapeMenu.started -= m_Wrapper.m_MenusActionsCallbackInterface.OnEscapeMenu;
                    @EscapeMenu.performed -= m_Wrapper.m_MenusActionsCallbackInterface.OnEscapeMenu;
                    @EscapeMenu.canceled -= m_Wrapper.m_MenusActionsCallbackInterface.OnEscapeMenu;
                    @Navigate.started -= m_Wrapper.m_MenusActionsCallbackInterface.OnNavigate;
                    @Navigate.performed -= m_Wrapper.m_MenusActionsCallbackInterface.OnNavigate;
                    @Navigate.canceled -= m_Wrapper.m_MenusActionsCallbackInterface.OnNavigate;
                    @ChangePage.started -= m_Wrapper.m_MenusActionsCallbackInterface.OnChangePage;
                    @ChangePage.performed -= m_Wrapper.m_MenusActionsCallbackInterface.OnChangePage;
                    @ChangePage.canceled -= m_Wrapper.m_MenusActionsCallbackInterface.OnChangePage;
                    @Select.started -= m_Wrapper.m_MenusActionsCallbackInterface.OnSelect;
                    @Select.performed -= m_Wrapper.m_MenusActionsCallbackInterface.OnSelect;
                    @Select.canceled -= m_Wrapper.m_MenusActionsCallbackInterface.OnSelect;
                    @Confirm.started -= m_Wrapper.m_MenusActionsCallbackInterface.OnConfirm;
                    @Confirm.performed -= m_Wrapper.m_MenusActionsCallbackInterface.OnConfirm;
                    @Confirm.canceled -= m_Wrapper.m_MenusActionsCallbackInterface.OnConfirm;
                    @Cancel.started -= m_Wrapper.m_MenusActionsCallbackInterface.OnCancel;
                    @Cancel.performed -= m_Wrapper.m_MenusActionsCallbackInterface.OnCancel;
                    @Cancel.canceled -= m_Wrapper.m_MenusActionsCallbackInterface.OnCancel;
                    @Clear.started -= m_Wrapper.m_MenusActionsCallbackInterface.OnClear;
                    @Clear.performed -= m_Wrapper.m_MenusActionsCallbackInterface.OnClear;
                    @Clear.canceled -= m_Wrapper.m_MenusActionsCallbackInterface.OnClear;
                    @ChangePageSecondary.started -= m_Wrapper.m_MenusActionsCallbackInterface.OnChangePageSecondary;
                    @ChangePageSecondary.performed -= m_Wrapper.m_MenusActionsCallbackInterface.OnChangePageSecondary;
                    @ChangePageSecondary.canceled -= m_Wrapper.m_MenusActionsCallbackInterface.OnChangePageSecondary;
                }
                m_Wrapper.m_MenusActionsCallbackInterface = instance;
                if (instance != null)
                {
                    @CloseBook.started += instance.OnCloseBook;
                    @CloseBook.performed += instance.OnCloseBook;
                    @CloseBook.canceled += instance.OnCloseBook;
                    @EscapeMenu.started += instance.OnEscapeMenu;
                    @EscapeMenu.performed += instance.OnEscapeMenu;
                    @EscapeMenu.canceled += instance.OnEscapeMenu;
                    @Navigate.started += instance.OnNavigate;
                    @Navigate.performed += instance.OnNavigate;
                    @Navigate.canceled += instance.OnNavigate;
                    @ChangePage.started += instance.OnChangePage;
                    @ChangePage.performed += instance.OnChangePage;
                    @ChangePage.canceled += instance.OnChangePage;
                    @Select.started += instance.OnSelect;
                    @Select.performed += instance.OnSelect;
                    @Select.canceled += instance.OnSelect;
                    @Confirm.started += instance.OnConfirm;
                    @Confirm.performed += instance.OnConfirm;
                    @Confirm.canceled += instance.OnConfirm;
                    @Cancel.started += instance.OnCancel;
                    @Cancel.performed += instance.OnCancel;
                    @Cancel.canceled += instance.OnCancel;
                    @Clear.started += instance.OnClear;
                    @Clear.performed += instance.OnClear;
                    @Clear.canceled += instance.OnClear;
                    @ChangePageSecondary.started += instance.OnChangePageSecondary;
                    @ChangePageSecondary.performed += instance.OnChangePageSecondary;
                    @ChangePageSecondary.canceled += instance.OnChangePageSecondary;
                }
            }
        }
        public MenusActions @Menus => new MenusActions(this);

        // Popup
        private readonly InputActionMap m_Popup;
        private IPopupActions m_PopupActionsCallbackInterface;
        private readonly InputAction m_Popup_PopupConfirm;
        private readonly InputAction m_Popup_PopupDeny;
        public struct PopupActions
        {
            private @GameInput m_Wrapper;
            public PopupActions(@GameInput wrapper) { m_Wrapper = wrapper; }
            public InputAction @PopupConfirm => m_Wrapper.m_Popup_PopupConfirm;
            public InputAction @PopupDeny => m_Wrapper.m_Popup_PopupDeny;
            public InputActionMap Get() { return m_Wrapper.m_Popup; }
            public void Enable() { Get().Enable(); }
            public void Disable() { Get().Disable(); }
            public bool enabled => Get().enabled;
            public static implicit operator InputActionMap(PopupActions set) { return set.Get(); }
            public void SetCallbacks(IPopupActions instance)
            {
                if (m_Wrapper.m_PopupActionsCallbackInterface != null)
                {
                    @PopupConfirm.started -= m_Wrapper.m_PopupActionsCallbackInterface.OnPopupConfirm;
                    @PopupConfirm.performed -= m_Wrapper.m_PopupActionsCallbackInterface.OnPopupConfirm;
                    @PopupConfirm.canceled -= m_Wrapper.m_PopupActionsCallbackInterface.OnPopupConfirm;
                    @PopupDeny.started -= m_Wrapper.m_PopupActionsCallbackInterface.OnPopupDeny;
                    @PopupDeny.performed -= m_Wrapper.m_PopupActionsCallbackInterface.OnPopupDeny;
                    @PopupDeny.canceled -= m_Wrapper.m_PopupActionsCallbackInterface.OnPopupDeny;
                }
                m_Wrapper.m_PopupActionsCallbackInterface = instance;
                if (instance != null)
                {
                    @PopupConfirm.started += instance.OnPopupConfirm;
                    @PopupConfirm.performed += instance.OnPopupConfirm;
                    @PopupConfirm.canceled += instance.OnPopupConfirm;
                    @PopupDeny.started += instance.OnPopupDeny;
                    @PopupDeny.performed += instance.OnPopupDeny;
                    @PopupDeny.canceled += instance.OnPopupDeny;
                }
            }
        }
        public PopupActions @Popup => new PopupActions(this);
        public interface IGameplayActions
        {
            void OnMovement(InputAction.CallbackContext context);
            void OnLook(InputAction.CallbackContext context);
            void OnPrimaryInteract(InputAction.CallbackContext context);
            void OnSecondaryInteract(InputAction.CallbackContext context);
            void OnToggleSpellWheel(InputAction.CallbackContext context);
            void OnScroll(InputAction.CallbackContext context);
            void OnOpenBook(InputAction.CallbackContext context);
            void OnEscapeGameplay(InputAction.CallbackContext context);
            void OnSelectHotbarPage(InputAction.CallbackContext context);
            void OnDeveloperSkipDay(InputAction.CallbackContext context);
            void OnCancel(InputAction.CallbackContext context);
            void OnScrollNumberKeys(InputAction.CallbackContext context);
            void OnSecondaryScroll(InputAction.CallbackContext context);
            void OnSecondaryScrollToggle(InputAction.CallbackContext context);
        }
        public interface IMenusActions
        {
            void OnCloseBook(InputAction.CallbackContext context);
            void OnEscapeMenu(InputAction.CallbackContext context);
            void OnNavigate(InputAction.CallbackContext context);
            void OnChangePage(InputAction.CallbackContext context);
            void OnSelect(InputAction.CallbackContext context);
            void OnConfirm(InputAction.CallbackContext context);
            void OnCancel(InputAction.CallbackContext context);
            void OnClear(InputAction.CallbackContext context);
            void OnChangePageSecondary(InputAction.CallbackContext context);
        }
        public interface IPopupActions
        {
            void OnPopupConfirm(InputAction.CallbackContext context);
            void OnPopupDeny(InputAction.CallbackContext context);
        }
    }
}
